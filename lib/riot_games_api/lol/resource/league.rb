module RiotGamesApi
  module LOL
    module Resource
      class League < Base
        def initialize(connection, region)
          super
          @version = 'v2.5'
        end

        # Return league data by summoner id
        # @param [Array] summoner_ids
        # @return [Array] LeagueList
        def by_summoner_id(summoner_ids)
          neated_param = neat_params(summoner_ids)
          leagues_by_player = get(resource_path('by-summoner', neated_param), @version)
          make_array_league_list(leagues_by_player)
        end

        # Return league data by summoner id
        # @param [Array] summoner_ids
        # @return [Array] LeagueList
        def by_summoner_id_only_own_entry(summoner_ids)
          neated_param = neat_params(summoner_ids)
          leagues_by_player = get(resource_path('by-summoner', neated_param, true), @version)
          make_array_league_list(leagues_by_player)
        end

        # Return league data by team id
        # @param [Array] team_ids
        # @return [Array] LeagueList
        def by_team_id(team_ids)
          neated_param = neat_params(team_ids)
          leagues_by_team = get(resource_path('by-team', neated_param), @version)
          make_array_league_list(leagues_by_team)
        end

        # Return league data by summoner id
        # @param [Array] team_ids
        # @return [Array] LeagueList
        def by_team_id_only_own_entry(team_ids)
          neated_param = neat_params(team_ids)
          leagues_by_team = get(resource_path('by-team', neated_param, true), @version)
          make_array_league_list(leagues_by_team)
        end

        # Return challenger solo 5v5 league data
        # @return League
        def challenger_solo_5v5
          league = get(resource_path_by_challenger, @version, type: 'RANKED_SOLO_5x5')
          RiotGamesApi::LOL::Model::League::League.new league
        end

        # Return challenger team 5v5 league data
        # @return League
        def challenger_team_5v5
          league = get(resource_path_by_challenger, @version, type: 'RANKED_TEAM_5x5')
          RiotGamesApi::LOL::Model::League::League.new league
        end

        # Return challenger team 3v3 league data
        # @return League
        def challenger_team_3v3
          league = get(resource_path_by_challenger, @version, type: 'RANKED_TEAM_3x3')
          RiotGamesApi::LOL::Model::League::League.new league
        end

        private

        def resource_path(path, target_id, entry = false)
          if entry
            "league/#{path}/#{target_id}/entry"
          else
            "league/#{path}/#{target_id}"
          end
        end

        def resource_path_by_challenger
          'league/challenger'
        end

        def make_array_league_list(leagues_by_player)
          leagues_by_player.map do |league_list|
            RiotGamesApi::LOL::Model::League::LeagueList.new(id: league_list.first, leagues: league_list.last)
          end
        end
      end
    end
  end
end
