
module RiotGamesApi
  module LOL
    module Model
      module StaticData
        class BlockItem
          include Virtus.model

          attribute :count, Integer
          attribute :id, Integer
        end
      end
    end
  end
end
