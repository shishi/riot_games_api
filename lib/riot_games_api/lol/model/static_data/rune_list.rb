require 'virtus'

module RiotGamesApi
  module LOL
    module Model
      module StaticData
        class RuneList
          include Virtus.model

          attribute :basic, RiotGamesApi::LOL::Model::StaticData::BasicData
          attribute :data, Hash[Integer => RiotGamesApi::LOL::Model::StaticData::Rune]
          attribute :type, String
          attribute :version, String
        end
      end
    end
  end
end
