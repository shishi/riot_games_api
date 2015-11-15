module RiotGamesApi
  module LOL
    module Model
      module League
        class LeagueList
          include Virtus.model

          attribute :id, Integer
          attribute :leagues, Array[RiotGamesApi::LOL::Model::League::League]
        end
      end
    end
  end
end
