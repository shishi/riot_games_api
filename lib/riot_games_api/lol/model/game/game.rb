module RiotGamesApi
  module LOL
    module Model
      module Game
        class Game
          include Virtus.model

          attribute :champion_id, Integer
          attribute :create_date, RiotGamesApi::LOL::Model::Corecion::Time
          attribute :fellow_players, Array[RiotGamesApi::LOL::Model::Game::Player]
          attribute :game_id, Integer
          attribute :game_mode, String
          attribute :game_type, String
          attribute :invalid, Boolean
          attribute :ip_earned, Integer
          attribute :level, Integer
          attribute :map_id, Integer
          attribute :spell1, Integer
          attribute :spell2, Integer
          attribute :stats, RiotGamesApi::LOL::Model::Game::RawStats
          attribute :sub_type, String
          attribute :team_id, Integer
        end
      end
    end
  end
end
