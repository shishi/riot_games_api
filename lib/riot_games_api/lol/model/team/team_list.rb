module RiotGamesApi
  module LOL
    module Model
      module Team
        class TeamList
          include Virtus.model

          attribute :id, Integer
          attribute :teams, Array[RiotGamesApi::LOL::Model::Team::Team]
        end
      end
    end
  end
end
