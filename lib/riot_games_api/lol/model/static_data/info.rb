module RiotGamesApi
  module LOL
    module Model
      module StaticData
        class Info
          include Virtus.model

          attribute :attack, Integer
          attribute :defense, Integer
          attribute :difficulty, Integer
          attribute :magic, Integer
        end
      end
    end
  end
end
