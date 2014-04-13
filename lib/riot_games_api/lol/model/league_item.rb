require 'virtus'

module RiotGamesApi
  module LOL
    module Model
      class LeagueItem
        include Virtus.model

        attribute :is_fresh_blood, Boolean
        attribute :is_hot_streak, Boolean
        attribute :is_inactive, Boolean
        attribute :is_veteran, Boolean
        attribute :last_played, Integer
        attribute :league_name, String
        attribute :league_points, Integer
        attribute :mini_series, RiotGamesApi::LOL::Model::MiniSeries
        attribute :player_or_team_id, String
        attribute :player_or_team_name, String
        attribute :queue_type, String
        attribute :rank, String
        attribute :tier, String
        attribute :wins, Integer

        alias_method :fresh_blood, :is_fresh_blood
        alias_method :fresh_blood?, :is_fresh_blood?
        alias_method :hot_streak, :is_hot_streak
        alias_method :hot_streak?, :is_hot_streak?
        alias_method :inactive, :is_inactive
        alias_method :inactive?, :is_inactive?
        alias_method :veteran, :is_veteran
        alias_method :veteran?, :is_veteran?
      end
    end
  end
end
