require 'virtus'

module RiotGamesApi
  module LOL
    module Model
      module LOLStaticData
        class Skin
          include Virtus.model

          attribute :id, Integer
          attribute :name, String
          attribute :num, Integer
        end
      end
    end
  end
end
