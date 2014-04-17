module RiotGamesApi
  module LOL
    module Model
      module StaticData
        class ChampionListDataById < ChampionList
          attribute :data, Hash[Integer => RiotGamesApi::LOL::Model::StaticData::Champion]
        end
      end
    end
  end
end
