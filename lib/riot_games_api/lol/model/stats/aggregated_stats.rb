require 'virtus'

module RiotGamesApi
  module LOL
    module Model
      module Stats
        class AggregatedStats
          include Virtus.model

          attribute :average_assists, Integer
          attribute :average_champions_killed, Integer
          attribute :average_combat_player_score, Integer
          attribute :average_node_capture, Integer
          attribute :average_node_capture_assist, Integer
          attribute :average_node_neutralize, Integer
          attribute :average_node_neutralize_assist, Integer
          attribute :average_num_deaths, Integer
          attribute :average_objective_player_score, Integer
          attribute :average_team_objective, Integer
          attribute :average_total_player_score, Integer
          attribute :bot_games_played, Integer
          attribute :killing_spree, Integer
          attribute :max_assists, Integer
          attribute :max_champions_killed, Integer
          attribute :max_combat_player_score, Integer
          attribute :max_largest_critical_strike, Integer
          attribute :max_largest_killing_spree, Integer
          attribute :max_node_capture, Integer
          attribute :max_node_capture_assist, Integer
          attribute :max_node_neutralize, Integer
          attribute :max_node_neutralize_assist, Integer
          attribute :max_num_deaths, Integer
          attribute :max_objective_player_score, Integer
          attribute :max_team_objective, Integer
          attribute :max_time_played, Integer
          attribute :max_time_spent_living, Integer
          attribute :max_total_player_score, Integer
          attribute :most_champion_kills_per_session, Integer
          attribute :most_spells_cast, Integer
          attribute :normal_games_played, Integer
          attribute :ranked_premade_games_played, Integer
          attribute :ranked_solo_games_played, Integer
          attribute :total_assists, Integer
          attribute :total_champion_kills, Integer
          attribute :total_damage_dealt, Integer
          attribute :total_damage_taken, Integer
          attribute :total_deaths_per_session, Integer
          attribute :total_double_kills, Integer
          attribute :total_first_blood, Integer
          attribute :total_gold_earned, Integer
          attribute :total_heal, Integer
          attribute :total_magic_damage_dealt, Integer
          attribute :total_minion_kills, Integer
          attribute :total_neutral_minions_killed, Integer
          attribute :total_node_capture, Integer
          attribute :total_node_neutralize, Integer
          attribute :total_penta_kills, Integer
          attribute :total_physical_damage_dealt, Integer
          attribute :total_quadra_kills, Integer
          attribute :total_sessions_lost, Integer
          attribute :total_sessions_played, Integer
          attribute :total_sessions_won, Integer
          attribute :total_triple_kills, Integer
          attribute :total_turrets_killed, Integer
          attribute :total_unreal_kills, Integer
        end
      end
    end
  end
end
