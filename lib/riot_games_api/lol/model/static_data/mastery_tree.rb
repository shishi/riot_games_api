module RiotGamesApi
  module LOL
    module Model
      module StaticData
        class MasteryTree
          include Virtus.model

          attribute :defense, Array[RiotGamesApi::LOL::Model::StaticData::MasteryTreeList]
          attribute :offense, Array[RiotGamesApi::LOL::Model::StaticData::MasteryTreeList]
          attribute :utility, Array[RiotGamesApi::LOL::Model::StaticData::MasteryTreeList]
        end
      end
    end
  end
end
