module RiotGamesApi
  module LOL
    module Model
      module Team
        class TeamStatDetail
          include Virtus.model

          attribute :average_games_played, Integer
          attribute :full_id, String
          attribute :losses, Integer
          attribute :team_stat_type, String
          attribute :wins, Integer
        end
      end
    end
  end
end
