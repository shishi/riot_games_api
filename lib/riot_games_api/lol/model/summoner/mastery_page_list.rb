require 'virtus'

module RiotGamesApi
  module LOL
    module Model
      module Summoner
        class MasteryPageList
          include Virtus.model

          attribute :pages, Array[RiotGamesApi::LOL::Model::Summoner::MasteryPage]
          attribute :summoner_id, Integer
        end
      end
    end
  end
end
