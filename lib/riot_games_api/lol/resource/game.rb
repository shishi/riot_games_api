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

        # me 42139310
        def recent(summoner_id)
          Hashie::Mash.new(get resource_path(summoner_id), @version)
        end
      end
    end
  end
end
