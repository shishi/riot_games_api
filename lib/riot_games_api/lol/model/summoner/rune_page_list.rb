module RiotGamesApi
  module LOL
    module Model
      module Summoner
        class RunePageList
          include Virtus.model

          attribute :pages, Array[RiotGamesApi::LOL::Model::Summoner::RunePage]
          attribute :summoner_id, Integer
        end
      end
    end
  end
end
