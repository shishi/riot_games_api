
module RiotGamesApi
  module LOL
    module Model
      module Summoner
        class RunePage
          include Virtus.model

          attribute :current, Boolean
          attribute :id, Integer
          attribute :name, String
          attribute :slots, Set[RiotGamesApi::LOL::Model::Summoner::RuneSlot]
        end
      end
    end
  end
end
