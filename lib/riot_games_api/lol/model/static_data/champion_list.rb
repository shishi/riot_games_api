
module RiotGamesApi
  module LOL
    module Model
      module StaticData
        class ChampionList
          include Virtus.model

          attribute :data, Hash[String => RiotGamesApi::LOL::Model::StaticData::Champion]
          attribute :format, String
          attribute :keys, Hash[Integer => String]
          attribute :type, String
          attribute :version, String
        end
      end
    end
  end
end
