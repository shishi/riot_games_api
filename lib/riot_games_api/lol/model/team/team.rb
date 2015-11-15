module RiotGamesApi
  module LOL
    module Model
      module Team
        class Team
          include Virtus.model

          attribute :create_date, RiotGamesApi::LOL::Model::Corecion::Time
          attribute :full_id, String
          attribute :last_game_date, RiotGamesApi::LOL::Model::Corecion::Time
          attribute :last_join_date, RiotGamesApi::LOL::Model::Corecion::Time
          attribute :last_joined_ranked_team_queue_date, RiotGamesApi::LOL::Model::Corecion::Time
          attribute :match_history, Array[RiotGamesApi::LOL::Model::Team::MatchHistorySummary]
          attribute :modify_date, RiotGamesApi::LOL::Model::Corecion::Time
          attribute :name, String
          attribute :roster, RiotGamesApi::LOL::Model::Team::Roster
          attribute :second_last_join_date, RiotGamesApi::LOL::Model::Corecion::Time
          attribute :status, String
          attribute :tag, String
          attribute :team_stat_summary, RiotGamesApi::LOL::Model::Team::TeamStatSummary
          attribute :third_last_join_date, RiotGamesApi::LOL::Model::Corecion::Time
        end
      end
    end
  end
end
