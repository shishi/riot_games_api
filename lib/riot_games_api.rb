require_relative 'riot_games_api/version'
require_relative 'riot_games_api/lol/client'
require_relative 'riot_games_api/lol/resource'
require_relative 'riot_games_api/lol/model'

require 'bundler/setup'

require 'json'
require 'faraday'
require 'faraday_middleware'

# TODO RiotGamesApi::LOL::Model may be just Dto
module RiotGamesApi
end
