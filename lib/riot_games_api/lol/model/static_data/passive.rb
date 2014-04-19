module RiotGamesApi
  module LOL
    module Model
      module StaticData
        class Passive
          include Virtus.model

          attribute :description, String
          attribute :image, RiotGamesApi::LOL::Model::StaticData::Image
          attribute :name, String
          attribute :sanitized_description, String
        end
      end
    end
  end
end
