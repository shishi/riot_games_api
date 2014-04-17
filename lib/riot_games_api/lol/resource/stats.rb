module RiotGamesApi
  module LOL
    module Resource
      class Stats < Base
        def initialize(connection, region)
          super
          @version = 'v1.3'
        end

        def ranked(summoner_id, season = nil) # e.g. season = 'SEASON3'
          stats = get(resource_path('ranked', summoner_id), @version, season: season)
          RiotGamesApi::LOL::Model::Stats::RankedStats.new stats
        end

        private

        def resource_path(path, summoner_id)
          "stats/by-summoner/#{summoner_id}/#{path}"
        end
      end
    end
  end
end
