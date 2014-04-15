require 'virtus'

module RiotGamesApi
  module LOL
    module Model
      module LOLStaticData
        class LevelTip
          include Virtus.model

          attribute :effect, Array[String]
          attribute :label, Array[String]
        end
      end
    end
  end
end
