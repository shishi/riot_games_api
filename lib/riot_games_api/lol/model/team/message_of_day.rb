module RiotGamesApi
  module LOL
    module Model
      module Team
        class MessageOfDay
          include Virtus.model

          attribute :create_date, RiotGamesApi::LOL::Model::Corecion::Time
          attribute :message, String
          attribute :version, Integer
        end
      end
    end
  end
end
