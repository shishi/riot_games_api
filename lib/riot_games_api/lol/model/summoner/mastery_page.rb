module RiotGamesApi
  module LOL
    module Model
      module Summoner
        class MasteryPage
          include Virtus.model

          attribute :current, Boolean
          attribute :id, Integer
          attribute :masteries, Array[RiotGamesApi::LOL::Model::Summoner::Mastery]
          attribute :name, String
        end
      end
    end
  end
end
