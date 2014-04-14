require 'virtus'

module RiotGamesApi
  module LOL
    module Model
      module Game
        class RecentGame
          include Virtus.model

          attribute :games, Array[RiotGamesApi::LOL::Model::Game::Game]
          attribute :summoner_id, Integer
        end
      end
    end
  end
end
