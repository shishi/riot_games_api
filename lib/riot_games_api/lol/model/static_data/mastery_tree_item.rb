module RiotGamesApi
  module LOL
    module Model
      module StaticData
        class MasteryTreeItem
          include Virtus.model

          attribute :mastery_id, Integer
          attribute :prereq, String
        end
      end
    end
  end
end
