module RiotGamesApi
  module LOL
    module Resource
      class Game < Base
        def initialize(connection, region)
          super
          @version = 'v1.3'
        end

        # Return recent games by summoner id
        # @param [String, Integer] summoner_id
        # @return RecentGame model
        def recent(summoner_id)
          recent_game = get(resource_path(summoner_id), @version)
          RiotGamesApi::LOL::Model::Game::RecentGame.new recent_game
        end

        private

        def resource_path(summoner_id)
          "game/by-summoner/#{summoner_id}/recent"
        end
      end
    end
  end
end
