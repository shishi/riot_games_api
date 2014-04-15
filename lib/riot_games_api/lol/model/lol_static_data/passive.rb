require 'virtus'

module RiotGamesApi
  module LOL
    module Model
      module LOLStaticData
        class Passive
          include Virtus.model

          attribute :description, String
          attribute :image, RiotGamesApi::LOL::Model::LOLStaticData::Image
          attribute :name, String
          attribute :sanitized_description, String
        end
      end
    end
  end
end
