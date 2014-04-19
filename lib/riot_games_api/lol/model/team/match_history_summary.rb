module RiotGamesApi
  module LOL
    module Model
      module Team
        class MatchHistorySummary
          include Virtus.model

          attribute :assists, Integer
          attribute :date, RiotGamesApi::LOL::Model::Corecion::Time
          attribute :deaths, Integer
          attribute :game_id, Integer
          attribute :game_mode, String
          attribute :invalid, Boolean
          attribute :kills, Integer
          attribute :map_id, Integer
          attribute :opposing_team_kills, Integer
          attribute :opposing_team_name, String
          attribute :win, Boolean
        end
      end
    end
  end
end
