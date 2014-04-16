require 'virtus'

module RiotGamesApi
  module LOL
    module Model
      module StaticData
        class BasicDataStats
          include Virtus.model

          attribute :flat_armor_mod, Float
          attribute :flat_attack_speed_mod, Float
          attribute :flat_block_mod, Float
          attribute :flat_crit_chance_mod, Float
          attribute :flat_crit_damage_mod, Float
          attribute :flat_exp_bonus, Float
          attribute :flat_energy_pool_mod, Float
          attribute :flat_energy_regen_mod, Float
          attribute :flat_hp_pool_mod, Float
          attribute :flat_hp_regen_mod, Float
          attribute :flat_mp_pool_mod, Float
          attribute :flat_mp_regen_mod, Float
          attribute :flat_magic_damage_mod, Float
          attribute :flat_movement_speed_mod, Float
          attribute :flat_physical_damage_mod, Float
          attribute :flat_spell_block_mod, Float
          attribute :percent_armor_mod, Float
          attribute :percent_attack_speed_mod, Float
          attribute :percent_block_mod, Float
          attribute :percent_crit_chance_mod, Float
          attribute :percent_crit_damage_mod, Float
          attribute :percent_dodge_mod, Float
          attribute :percent_exp_bonus, Float
          attribute :percent_hp_pool_mod, Float
          attribute :percent_hp_regen_mod, Float
          attribute :percent_life_steal_mod, Float
          attribute :percent_mp_pool_mod, Float
          attribute :percent_mp_regen_mod, Float
          attribute :percent_magic_damage_mod, Float
          attribute :percent_movement_speed_mod, Float
          attribute :percent_physical_damage_mod, Float
          attribute :percent_spell_block_mod, Float
          attribute :percent_spell_vamp_mod, Float
          attribute :r_flat_armor_mod_per_level, Float
          attribute :r_flat_armor_penetration_mod, Float
          attribute :r_flat_armor_penetration_mod_per_level, Float
          attribute :r_flat_crit_chance_mod_per_level, Float
          attribute :r_flat_crit_damage_mod_per_level, Float
          attribute :r_flat_dodge_mod, Float
          attribute :r_flat_dodge_mod_per_level, Float
          attribute :r_flat_energy_mod_per_level, Float
          attribute :r_flat_energy_regen_mod_per_level, Float
          attribute :r_flat_gold_per10mod, Float
          attribute :r_flat_hp_mod_per_level, Float
          attribute :r_flat_hp_regen_mod_per_level, Float
          attribute :r_flat_mp_mod_per_level, Float
          attribute :r_flat_mp_regen_mod_per_level, Float
          attribute :r_flat_magic_damage_mod_per_level, Float
          attribute :r_flat_magic_penetration_mod, Float
          attribute :r_flat_magic_penetration_mod_per_level, Float
          attribute :r_flat_movement_speed_mod_per_level, Float
          attribute :r_flat_physical_damage_mod_per_level, Float
          attribute :r_flat_spell_block_mod_per_level, Float
          attribute :r_flat_time_dead_mod, Float
          attribute :r_flat_time_dead_mod_per_level, Float
          attribute :r_percent_armor_penetration_mod, Float
          attribute :r_percent_armor_penetration_mod_per_level, Float
          attribute :r_percent_attack_speed_mod_per_level, Float
          attribute :r_percent_cooldown_mod, Float
          attribute :r_percent_cooldown_mod_per_level, Float
          attribute :r_percent_magic_penetration_mod, Float
          attribute :r_percent_magic_penetration_mod_per_level, Float
          attribute :r_percent_movement_speed_mod_per_level, Float
          attribute :r_percent_time_dead_mod, Float
          attribute :r_percent_time_dead_mod_per_level, Float
        end
      end
    end
  end
end
