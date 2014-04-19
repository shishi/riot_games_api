module RiotGamesApi
  module LOL
    module Model
      module StaticData
        class Gold
          include Virtus.model

          attribute :base, Integer
          attribute :purchasable, Boolean
          attribute :sell, Integer
          attribute :total, Integer
        end
      end
    end
  end
end
