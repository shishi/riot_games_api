module RiotGamesApi
  module LOL
    module Model
      module StaticData
        class Champion
          include Virtus.model

          attribute :allytips, Array[String]
          attribute :blurb, String
          attribute :enemytips, Array[String]
          attribute :id, Integer
          attribute :image, RiotGamesApi::LOL::Model::StaticData::Image
          attribute :info, RiotGamesApi::LOL::Model::StaticData::Info
          attribute :key, String
          attribute :lore, String
          attribute :name, String
          attribute :partype, String
          attribute :passive, RiotGamesApi::LOL::Model::StaticData::Passive
          attribute :recommended, Array[RiotGamesApi::LOL::Model::StaticData::Recommended]
          attribute :skins, Array[RiotGamesApi::LOL::Model::StaticData::Skin]
          attribute :spells, Array[RiotGamesApi::LOL::Model::StaticData::ChampionSpell]
          attribute :stats, RiotGamesApi::LOL::Model::StaticData::Stats
          attribute :tags, Array[String]
          attribute :title, String
        end
      end
    end
  end
end
