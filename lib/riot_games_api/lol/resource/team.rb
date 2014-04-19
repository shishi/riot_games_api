module RiotGamesApi
  module LOL
    module Resource
      class Team < Base
        def initialize(connection, region)
          super
          @version = 'v2.2'
        end

        def by_summoner_id(summoner_id)
          get(resource_path(summoner_or_team_id, true), @version).map do |team|
            RiotGamesApi::LOL::Model::Team::Team.new team
          end
        end

        def by_team_id(team_id)
          team = get(resource_path(team_id), @version)
          team_key = team.keys.first.gsub(/team/, 'TEAM').gsub(/_/, '-') # undo rashify
          { team_key => RiotGamesApi::LOL::Model::Team::Team.new(team.values.first) }
        end

        private

        def resource_path(summoner_or_team_id, by_summoner = false)
          if by_summoner
            "team/by-summoner/#{summoner_or_team_id}"
          else
            "team/#{summoner_or_team_id}"
          end
        end
      end
    end
  end
end
