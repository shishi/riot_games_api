module RiotGamesApi
  module LOL
    module Resource
      class Game < Base
        def initialize(connection, region)
          super
          @version = 'v1.3'
        end

        def resource_path(summoner_id)
          "game/by-summoner/#{summoner_id}/recent"
        end

        def recent(summoner_id)
          get(resource_path(summoner_id), @version).games.map do |game|
            RiotGamesApi::LOL::Model::Game.new game
          end
        end
      end
    end
  end
end
