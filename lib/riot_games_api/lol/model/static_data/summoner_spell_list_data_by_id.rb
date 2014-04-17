module RiotGamesApi
  module LOL
    module Model
      module StaticData
        class SummonerSpellListDataById < SummonerSpellList
          attribute :data, Hash[Integer => RiotGamesApi::LOL::Model::StaticData::SummonerSpell]
        end
      end
    end
  end
end
