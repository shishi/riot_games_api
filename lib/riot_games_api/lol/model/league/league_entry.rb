module RiotGamesApi
  module LOL
    module Model
      module League
        class LeagueEntry
          include Virtus.model

          attribute :division, String
          attribute :is_fresh_blood, Boolean
          attribute :is_hot_streak, Boolean
          attribute :is_inactive, Boolean
          attribute :is_veteran, Boolean
          attribute :league_points, Integer
          attribute :losses, Integer
          attribute :mini_series, RiotGamesApi::LOL::Model::League::MiniSeries
          attribute :player_or_team_id, String
          attribute :player_or_team_name, String
          attribute :wins, Integer
        end
      end
    end
  end
end
