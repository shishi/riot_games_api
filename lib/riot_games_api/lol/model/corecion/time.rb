require 'virtus'

module RiotGamesApi
  module LOL
    module Model
      module Corecion
        class Time < Virtus::Attribute
          def coerce(value)
            unixtime_remove_millisecond = value / 1000
            ::Time.at(unixtime_remove_millisecond)
          end
        end
      end
    end
  end
end
