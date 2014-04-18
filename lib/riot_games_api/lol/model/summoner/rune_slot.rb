require 'virtus'

module RiotGamesApi
  module LOL
    module Model
      module Summoner
        class RuneSlot
          include Virtus.model

          attribute :rune_id, Integer
          attribute :rune_slot_id, Integer
        end
      end
    end
  end
end
