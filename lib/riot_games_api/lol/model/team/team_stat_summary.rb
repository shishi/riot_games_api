module RiotGamesApi
  module LOL
    module Model
      module Team
        class TeamStatSummary
          include Virtus.model

          attribute :full_id, String
          attribute :team_stat_details, Array[RiotGamesApi::LOL::Model::Team::TeamStatDetail]
        end
      end
    end
  end
end
