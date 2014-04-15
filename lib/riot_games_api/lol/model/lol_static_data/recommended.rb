require 'virtus'

module RiotGamesApi
  module LOL
    module Model
      module LOLStaticData
        class Recommended
          include Virtus.model

          attribute :blocks, Array[RiotGamesApi::LOL::Model::LOLStaticData::Block]
          attribute :champion, String
          attribute :map, String
          attribute :mode, String
          attribute :priority, Boolean
          attribute :title, String
          attribute :type, String
        end
      end
    end
  end
end
