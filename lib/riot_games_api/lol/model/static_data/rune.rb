
module RiotGamesApi
  module LOL
    module Model
      module StaticData
        class Rune
          include Virtus.model

          attribute :colloq, String
          attribute :consume_on_full, Boolean
          attribute :consumed, Boolean
          attribute :depth, Integer
          attribute :description, String
          attribute :from, Array[String]
          attribute :gold, RiotGamesApi::LOL::Model::StaticData::Gold
          attribute :group, String
          attribute :hide_from_all, Boolean
          attribute :id, Integer
          attribute :image, RiotGamesApi::LOL::Model::StaticData::Image
          attribute :in_store, Boolean
          attribute :into, Array[String]
          attribute :maps, Hash[Integer => Boolean]
          attribute :name, String
          attribute :plaintext, String
          attribute :required_champion, String
          attribute :rune, RiotGamesApi::LOL::Model::StaticData::MetaData
          attribute :sanitized_description, String
          attribute :special_recipe, Integer
          attribute :stacks, Integer
          attribute :stats, RiotGamesApi::LOL::Model::StaticData::BasicDataStats
          attribute :tags, Array[String]
        end
      end
    end
  end
end
