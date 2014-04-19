module RiotGamesApi
  module LOL
    module Model
      module Team
        class TeamMemberInfo
          include Virtus.model

          attribute :invite_date, RiotGamesApi::LOL::Model::Corecion::Time
          attribute :join_date, RiotGamesApi::LOL::Model::Corecion::Time
          attribute :player_id, Integer
          attribute :status, String
        end
      end
    end
  end
end
