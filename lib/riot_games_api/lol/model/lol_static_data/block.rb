require 'virtus'

module RiotGamesApi
  module LOL
    module Model
      module LOLStaticData
        class Block
          include Virtus.model

          attribute :items, Array[RiotGamesApi::LOL::Model::LOLStaticData::BlockItem]
          attribute :type, Integer
        end
      end
    end
  end
end
