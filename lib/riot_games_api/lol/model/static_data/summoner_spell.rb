require 'virtus'

module RiotGamesApi
  module LOL
    module Model
      module StaticData
        class SummonerSpell
          include Virtus.model

          attribute :cooldown, Array[Integer]
          attribute :cooldown_burn, String
          attribute :cost, Array[Integer]
          attribute :cost_burn, String
          attribute :cost_type, String
          attribute :description, String
          attribute :effect, Array[Array[Integer]]
          attribute :effect_burn, Array[String]
          attribute :id, Integer
          attribute :image, RiotGamesApi::LOL::Model::StaticData::Image
          attribute :key, String
          attribute :leveltip, RiotGamesApi::LOL::Model::StaticData::LevelTip
          attribute :maxrank, Integer
          attribute :modes, Array[String]
          attribute :name, String
          attribute :range, Array # array of integer or string
          attribute :range_burn, String
          attribute :resource, String
          attribute :sanitized_description, String
          attribute :sanitized_tooltip, String
          attribute :summoner_level, Integer
          attribute :tooltip, String
          attribute :vars, Array[RiotGamesApi::LOL::Model::StaticData::SpellVars]
        end
      end
    end
  end
end
