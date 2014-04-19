
module RiotGamesApi
  module LOL
    module Model
      module StaticData
        class MasteryTreeList
          include Virtus.model

          attribute :mastery_tree_items, Array[RiotGamesApi::LOL::Model::StaticData::MasteryTreeItem]
        end
      end
    end
  end
end
