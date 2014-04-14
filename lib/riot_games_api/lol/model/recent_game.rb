require 'virtus'

module RiotGamesApi
  module LOL
    module Model
      class RecentGame
        include Virtus.model

        attribute :games, Array[RiotGamesApi::LOL::Model::Game]
        attribute :summoner_id, Integer
      end
    end
  end
end
