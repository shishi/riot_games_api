module RiotGamesApi
  module LOL
    module Model
      module StaticData
        class SpellVars
          include Virtus.model

          attribute :coeff, Array[Float]
          attribute :dyn, String
          attribute :key, String
          attribute :link, String
        end
      end
    end
  end
end
