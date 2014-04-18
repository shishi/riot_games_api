require 'virtus'

module RiotGamesApi
  module LOL
    module Model
      module Stats
        class PlayerStatsSummaryList
          include Virtus.model

          attribute :player_stat_summaries, Array[RiotGamesApi::LOL::Model::Stats::PlayerStatsSummary]
          attribute :summoner_id, Integer
        end
      end
    end
  end
end
