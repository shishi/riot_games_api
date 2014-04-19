
module RiotGamesApi
  module LOL
    module Model
      module StaticData
        class MasteryList
          include Virtus.model

          attribute :data, Hash[Integer => RiotGamesApi::LOL::Model::StaticData::Mastery]
          attribute :tree, RiotGamesApi::LOL::Model::StaticData::MasteryTree
          attribute :type, String
          attribute :version, String
        end
      end
    end
  end
end
