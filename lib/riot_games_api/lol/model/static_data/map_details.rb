module RiotGamesApi
  module LOL
    module Model
      module StaticData
        class MapDetails
          include Virtus.model

          attribute :image, RiotGamesApi::LOL::Model::StaticData::Image
          attribute :map_id, Integer
          attribute :map_name, String
          attribute :unpurchasable_item_list, Array
        end
      end
    end
  end
end
