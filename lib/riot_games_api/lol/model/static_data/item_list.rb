module RiotGamesApi
  module LOL
    module Model
      module StaticData
        class ItemList
          include Virtus.model

          attribute :basic, RiotGamesApi::LOL::Model::StaticData::BasicData
          attribute :data, Hash[Integer => RiotGamesApi::LOL::Model::StaticData::Item]
          attribute :group, Array[RiotGamesApi::LOL::Model::StaticData::Group]
          attribute :tree, Array[RiotGamesApi::LOL::Model::StaticData::ItemTree]
          attribute :type, String
          attribute :version, String
        end
      end
    end
  end
end
