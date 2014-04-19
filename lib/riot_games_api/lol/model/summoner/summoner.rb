
module RiotGamesApi
  module LOL
    module Model
      module Summoner
        class Summoner
          include Virtus.model

          attribute :id, Integer
          attribute :name, String
          attribute :profile_icon_id, Integer
          attribute :revision_date, Integer
          attribute :summoner_level, Integer
        end
      end
    end
  end
end
