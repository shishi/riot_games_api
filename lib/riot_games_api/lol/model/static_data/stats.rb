module RiotGamesApi
  module LOL
    module Model
      module StaticData
        class Stats
          include Virtus.model

          attribute :armor, Float
          attribute :armorperlevel, Float
          attribute :attackdamage, Float
          attribute :attackdamageperlevel, Float
          attribute :attackrange, Float
          attribute :attackspeedoffset, Float
          attribute :attackspeedperlevel, Float
          attribute :crit, Float
          attribute :critperlevel, Float
          attribute :hp, Float
          attribute :hpperlevel, Float
          attribute :hpregen, Float
          attribute :hpregenperlevel, Float
          attribute :movespeed, Float
          attribute :mp, Float
          attribute :mpperlevel, Float
          attribute :mpregen, Float
          attribute :mpregenperlevel, Float
          attribute :spellblock, Float
          attribute :spellblockperlevel, Float
        end
      end
    end
  end
end
