module RiotGamesApi
  module LOL
    module Model
      module Team
        class Roster
          include Virtus.model

          attribute :member_list, Array[RiotGamesApi::LOL::Model::Team::TeamMemberInfo]
          attribute :owner_id, Integer
        end
      end
    end
  end
end
