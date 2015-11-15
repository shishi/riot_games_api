module RiotGamesApi
  module LOL
    module Resource
      class Team < Base
        def initialize(connection, region)
          super
          @version = 'v2.4'
        end

        # Return team data by summoner id
        # @param [Array] summoner ids
        # @return [TeamList]
        def by_summoner_id(summoner_ids)
          neated_param = neat_params(summoner_ids)
          teams_by_player = get(resource_path(neated_param, true), @version)
          teams_by_player.map do |team|
            RiotGamesApi::LOL::Model::Team::TeamList.new(id: team.first, teams: team.last)
          end
        end

        # Return team data by team id
        # @param [Array] team ids
        # @return [Array] team id => Team in Array
        def by_team_id(team_ids)
          neated_param = neat_params(team_ids)
          teams = get(resource_path(neated_param), @version)
          # team_key = team.keys.first.gsub(/team/, 'TEAM').gsub(/_/, '-') # undo rashify
          teams.map do |team|
            { team.first =>  RiotGamesApi::LOL::Model::Team::Team.new(team.last) }
          end
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
