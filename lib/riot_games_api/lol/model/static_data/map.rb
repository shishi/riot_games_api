module RiotGamesApi
  module LOL
    module Model
      module StaticData
        class Map
          include Virtus.model

          attribute :data, Hash[String => RiotGamesApi::LOL::Model::StaticData::MapDetails]
          attribute :type, String
          attribute :version, String
        end
      end
    end
  end
end
