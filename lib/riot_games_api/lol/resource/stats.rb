module RiotGamesApi
  module LOL
    module Resource
      class Stats < Base
        def initialize(connection, region)
          super
          @version = 'v1.3'
        end

        # Return ranked stats data by summoner id
        # @param [String, Integer] summoner_id
        # @param [String] season (SEASON3, SEASON2014, SEASON2015) return current if do not set
        # @return RankedStats
        def ranked(summoner_id, season = nil)
          stats = get(resource_path('ranked', summoner_id), @version, season: season)
          RiotGamesApi::LOL::Model::Stats::RankedStats.new stats
        end

        # Return summary stats data by summoner id
        # @param [String, Integer] summoner_id
        # @param [String] season (SEASON3, SEASON2014, SEASON2015) return current if do not set
        # @return PlayerStatsSummaryList
        def summary(summoner_id, season = nil)
          stats = get(resource_path('summary', summoner_id), @version, season: season)
          RiotGamesApi::LOL::Model::Stats::PlayerStatsSummaryList.new stats
        end

        private

        def resource_path(path, summoner_id)
          "stats/by-summoner/#{summoner_id}/#{path}"
        end
      end
    end
  end
end
