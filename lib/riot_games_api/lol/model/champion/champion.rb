module RiotGamesApi
  module LOL
    module Model
      module Champion
        class Champion
          include Virtus.model

          attribute :id, Integer
          attribute :active, Boolean
          attribute :bot_enabled, Boolean
          attribute :free_to_play, Boolean
          attribute :bot_mm_enabled, Boolean
          attribute :ranked_play_enabled, Boolean
        end
      end
    end
  end
end
