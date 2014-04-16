require 'virtus'

module RiotGamesApi
  module LOL
    module Model
      module StaticData
        class ItemTree
          include Virtus.model

          attribute :header, String
          attribute :tags, Array[String]
        end
      end
    end
  end
end
