module RiotGamesApi
  module LOL
    module Model
      module StaticData
        class LanguageString
          include Virtus.model

          attribute :data, Hash[String => String]
          attribute :type, String
          attribute :version, String
        end
      end
    end
  end
end
