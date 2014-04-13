require 'virtus'

module RiotGamesApi
  module LOL
    module Model
      class League
        include Virtus.model

        attribute :entries, Array[RiotGamesApi::LOL::Model::LeagueItem]
        attribute :name, String
        attribute :participant_id, Integer
        attribute :queue, String
        attribute :tier, String
      end
    end
  end
end
