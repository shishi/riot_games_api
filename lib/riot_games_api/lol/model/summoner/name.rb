module RiotGamesApi
  module LOL
    module Model
      module Summoner
        class Name
          include Virtus.model

          attribute :id, Integer
          attribute :name, String
        end
      end
    end
  end
end
