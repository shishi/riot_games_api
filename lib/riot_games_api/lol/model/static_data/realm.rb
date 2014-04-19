require 'virtus'

module RiotGamesApi
  module LOL
    module Model
      module StaticData
        class Realm
          include Virtus.model

          attribute :cdn, String
          attribute :css, String
          attribute :dd, String
          attribute :l, String
          attribute :lg, String
          attribute :n, Hash[String => String]
          attribute :profileiconmax, Integer
          attribute :store, String
          attribute :v, String
        end
      end
    end
  end
end
