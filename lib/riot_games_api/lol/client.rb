module RiotGamesApi
  module LOL
    class Client
      def initialize(params = {})
        #fail ArgumentError, 'you should need :api_key in args at leaet.' unless params.has_key? :api_key

        @api_key = params[:api_key] || ENV['RIOT_GAMES_API_KEY']
        @base_url = params[:base_url] || 'https://prod.api.pvp.net/'
        @region = params[:region] || 'na'
        @logger = :logger
#        @logger = params[:debug] ? :logger : :raise_error
        @locale = params[:locale] || 'en_US'
      end

      def connection
        Faraday.new(url: @base_url) do |faraday|
          faraday.adapter  Faraday.default_adapter
          faraday.request  :url_encoded
          faraday.response @logger
          faraday.params[:api_key] = @api_key
          faraday.params[:locale] = @locale
        end
      end

      def champions
        RiotGamesApi::LOL::Resource::Champion.new(connection, @region)
      end

      def games
        RiotGamesApi::LOL::Resource::Game.new(connection, @region)
      end
    end
  end
end
