require 'virtus'

module RiotGamesApi
  module LOL
    module Model
      module StaticData
        class Mastery
          include Virtus.model

          attribute :description, Array[String]
          attribute :id, Integer
          attribute :image, RiotGamesApi::LOL::Model::StaticData::Image
          attribute :name, String
          attribute :prereq, String
          attribute :ranks, Integer
          attribute :sanitized_description, Array[String]
        end
      end
    end
  end
end
