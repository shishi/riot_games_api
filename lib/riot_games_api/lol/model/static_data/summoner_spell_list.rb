require 'virtus'

module RiotGamesApi
  module LOL
    module Model
      module StaticData
        class SummonerSpellList
          include Virtus.model

          attribute :data, Hash[Symbol => RiotGamesApi::LOL::Model::StaticData::SummonerSpell]
          attribute :type, String
          attribute :version, String
        end
      end
    end
  end
end
