require 'virtus'

module RiotGamesApi
  module LOL
    module Model
      module Summoner
        class Mastery
          include Virtus.model

          attribute :id, Integer
          attribute :rank, Integer
        end
      end
    end
  end
end
