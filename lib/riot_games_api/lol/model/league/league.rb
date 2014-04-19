module RiotGamesApi
  module LOL
    module Model
      module League
        class League
          include Virtus.model

          attribute :entries, Array[RiotGamesApi::LOL::Model::League::LeagueItem]
          attribute :name, String
          attribute :participant_id, Integer
          attribute :queue, String
          attribute :tier, String
        end
      end
    end
  end
end
