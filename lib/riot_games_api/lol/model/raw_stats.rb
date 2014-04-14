require 'virtus'

module RiotGamesApi
  module LOL
    module Model
      class RawStats
        include Virtus.model

        attribute :assists, Integer
        attribute :barracks_killed, Integer
        attribute :champions_killed, Integer
        attribute :combat_player_score, Integer
        attribute :consumables_purchased, Integer
        attribute :damage_dealt_player, Integer
        attribute :double_kills, Integer
        attribute :first_blood, Integer
        attribute :gold, Integer
        attribute :gold_earned, Integer
        attribute :gold_spent, Integer
        attribute :item0, Integer
        attribute :item1, Integer
        attribute :item2, Integer
        attribute :item3, Integer
        attribute :item4, Integer
        attribute :item5, Integer
        attribute :item6, Integer
        attribute :items_purchased, Integer
        attribute :killing_sprees, Integer
        attribute :largest_critical_strike, Integer
        attribute :largest_killing_spree, Integer
        attribute :largest_multi_kill, Integer
        attribute :legendary_items_created, Integer
        attribute :level, Integer
        attribute :magic_damage_dealt_player, Integer
        attribute :magic_damage_dealt_to_champions, Integer
        attribute :magic_damage_taken, Integer
        attribute :minions_denied, Integer
        attribute :minions_killed, Integer
        attribute :neutral_minions_killed, Integer
        attribute :neutral_minions_killed_enemy_jungle, Integer
        attribute :neutral_minions_killed_your_jungle, Integer
        attribute :nexus_killed, Boolean
        attribute :node_capture, Integer
        attribute :node_capture_assist, Integer
        attribute :node_neutralize, Integer
        attribute :node_neutralize_assist, Integer
        attribute :num_deaths, Integer
        attribute :num_items_bought, Integer
        attribute :objective_player_score, Integer
        attribute :penta_kills, Integer
        attribute :physical_damage_dealt_player, Integer
        attribute :physical_damage_dealt_to_champions, Integer
        attribute :physical_damage_taken, Integer
        attribute :quadra_kills, Integer
        attribute :sight_wards_bought, Integer
        attribute :spell1_cast, Integer
        attribute :spell2_cast, Integer
        attribute :spell3_cast, Integer
        attribute :spell4_cast, Integer
        attribute :summon_spell1_cast, Integer
        attribute :summon_spell2_cast, Integer
        attribute :super_monster_killed, Integer
        attribute :team, Integer
        attribute :team_objective, Integer
        attribute :time_played, Integer
        attribute :total_damage_dealt, Integer
        attribute :total_damage_dealt_to_champions, Integer
        attribute :total_damage_taken, Integer
        attribute :total_heal, Integer
        attribute :total_player_score, Integer
        attribute :total_score_rank, Integer
        attribute :total_time_crowd_control_dealt, Integer
        attribute :total_units_healed, Integer
        attribute :triple_kills, Integer
        attribute :true_damage_dealt_player, Integer
        attribute :true_damage_dealt_to_champions, Integer
        attribute :true_damage_taken, Integer
        attribute :turrets_killed, Integer
        attribute :unreal_kills, Integer
        attribute :victory_point_total, Integer
        attribute :vision_wards_bought, Integer
        attribute :ward_killed, Integer
        attribute :ward_placed, Integer
        attribute :win, Boolean
      end
    end
  end
end
