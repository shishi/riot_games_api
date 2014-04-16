require 'virtus'

module RiotGamesApi
  module LOL
    module Model
      module StaticData
        class Group
          include Virtus.model

          attribute :max_group_ownable, String
          attribute :key, String
        end
      end
    end
  end
end
