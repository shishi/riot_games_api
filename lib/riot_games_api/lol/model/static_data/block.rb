module RiotGamesApi
  module LOL
    module Model
      module StaticData
        class Block
          include Virtus.model

          attribute :items, Array[RiotGamesApi::LOL::Model::StaticData::BlockItem]
          attribute :type, Integer
        end
      end
    end
  end
end
