module RiotGamesApi
  module LOL
    class Client
      def initialize(params = {})
        @base_url = params[:use_ssl] ? 'https://prod.api.pvp.net/' : 'http://prod.api.pvp.net/'
        @api_key = params[:api_key] || ENV['RIOT_GAMES_API_KEY']
        @region = params[:region] || 'na'
        @adapter = params[:adapter] || Faraday.default_adapter
        @logger = params[:debug] ? :logger : :raise_error
        @locale = params[:locale] || 'en_US'

        fail ArgumentError, 'you should need "Riot Games API Key" at leaet.' unless @api_key
      end

      def connection
        Faraday.new(url: @base_url) do |faraday|
          faraday.adapter  @adapter
          faraday.request  :url_encoded
          faraday.response :rashify
          faraday.response :json
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

      def leagues
        RiotGamesApi::LOL::Resource::League.new(connection, @region)
      end
    end
  end
end
