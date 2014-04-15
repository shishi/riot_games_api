require 'virtus'

module RiotGamesApi
  module LOL
    module Model
      module LOLStaticData
        class Champion
          include Virtus.model

          attribute :allytips, Array[String]
          attribute :blurb, String
          attribute :enemytips, Array[String]
          attribute :id, Integer
          attribute :image, RiotGamesApi::LOL::Model::LOLStaticData::Image
          attribute :info, RiotGamesApi::LOL::Model::LOLStaticData::Info
          attribute :key, String
          attribute :lore, String
          attribute :name, String
          attribute :partype, String
          attribute :passive, RiotGamesApi::LOL::Model::LOLStaticData::Passive
          attribute :recommended, Array[RiotGamesApi::LOL::Model::LOLStaticData::Recommended]
          attribute :skins, Array[RiotGamesApi::LOL::Model::LOLStaticData::Skin]
          attribute :spells, Array[RiotGamesApi::LOL::Model::LOLStaticData::ChampionSpell]
          attribute :stats, RiotGamesApi::LOL::Model::LOLStaticData::Stats
          attribute :tags, Array[String]
          attribute :title, String
        end
      end
    end
  end
end
