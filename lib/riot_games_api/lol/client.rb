module RiotGamesApi
  module LOL
    class Client
      def initialize(params = {})
        @api_key = params[:api_key] || ENV['RIOT_GAMES_API_KEY']
        @region = params[:region] || 'na'
        @base_url = "https://#{@region}.api.pvp.net/"
        @adapter = params[:adapter] || Faraday.default_adapter
        @logger = params[:debug] ? :logger : :raise_error
        @locale = params[:locale] || 'en_US'

        fail ArgumentError, 'You should need "Riot Games API Key" at leaet.' unless @api_key
      end

      def connection
        Faraday.new(url: @base_url) do |faraday|
          faraday.request :url_encoded
          faraday.response :rashify
          faraday.response :json
          faraday.response @logger
          faraday.adapter @adapter
          faraday.params[:api_key] = @api_key
          faraday.params[:locale] = @locale
          faraday.headers['User-Agent'] = "RiotGamesApi gem v#{RiotGamesApi::VERSION}"
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

      def static_data
        RiotGamesApi::LOL::Resource::StaticData.new(connection, @region)
      end

      def stats
        RiotGamesApi::LOL::Resource::Stats.new(connection, @region)
      end

      def summoner
        RiotGamesApi::LOL::Resource::Summoner.new(connection, @region)
      end

      def team
        RiotGamesApi::LOL::Resource::Team.new(connection, @region)
      end
    end
  end
end
