module RiotGamesApi
  module LOL
    module Model
      module StaticData
        class MetaData
          include Virtus.model

          attribute :is_rune, Boolean
          attribute :tier, Integer
          attribute :type, String

          alias_method :rune, :is_rune
          alias_method :rune?, :is_rune?
        end
      end
    end
  end
end
