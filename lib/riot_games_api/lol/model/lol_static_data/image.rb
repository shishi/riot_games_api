require 'virtus'

module RiotGamesApi
  module LOL
    module Model
      module LOLStaticData
        class Image
          include Virtus.model

          attribute :full, String
          attribute :group, String
          attribute :h, Integer
          attribute :sprite, String
          attribute :w, Integer
          attribute :x, Integer
          attribute :y, Integer
        end
      end
    end
  end
end
