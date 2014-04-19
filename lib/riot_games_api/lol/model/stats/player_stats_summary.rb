
module RiotGamesApi
  module LOL
    module Model
      module Stats
        class PlayerStatsSummary
          include Virtus.model

          attribute :aggregated_stats, RiotGamesApi::LOL::Model::Stats::AggregatedStats
          attribute :losses, Integer
          attribute :modify_date, RiotGamesApi::LOL::Model::Corecion::Time
          attribute :player_stat_summary_type, String
          attribute :wins, String
        end
      end
    end
  end
end
