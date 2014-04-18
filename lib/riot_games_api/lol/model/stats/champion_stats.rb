require 'virtus'

module RiotGamesApi
  module LOL
    module Model
      module Stats
        class ChampionStats
          include Virtus.model

          attribute :id, Integer # id: 0 is represents the combined stats for all champions
          attribute :stats, RiotGamesApi::LOL::Model::Stats::AggregatedStats
        end
      end
    end
  end
end
