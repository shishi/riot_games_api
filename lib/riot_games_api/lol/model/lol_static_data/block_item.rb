require 'virtus'

module RiotGamesApi
  module LOL
    module Model
      module LOLStaticData
        class BlockItem
          include Virtus.model

          attribute :count, Integer
          attribute :id, Integer
        end
      end
    end
  end
end
