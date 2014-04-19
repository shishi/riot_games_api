
module RiotGamesApi
  module LOL
    module Model
      module StaticData
        class LevelTip
          include Virtus.model

          attribute :effect, Array[String]
          attribute :label, Array[String]
        end
      end
    end
  end
end
