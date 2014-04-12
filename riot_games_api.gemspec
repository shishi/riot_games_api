# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'riot_games_api/version'

Gem::Specification.new do |spec|
  spec.name          = "riot_games_api"
  spec.version       = RiotGamesApi::VERSION
  spec.authors       = ["Shigenobu Nishikawa"]
  spec.email         = ["shishi.s.n@gmail.com"]
  spec.summary       = %q{ Make access easy to Riot Games API. }
  spec.description   = %q{ Access Riot Games API to get their game data like League of Legends. }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'json'
  spec.add_dependency 'faraday', ['>= 0.7.4', '< 0.9']
  spec.add_dependency 'faraday_middleware', '~> 0.9.0'
  spec.add_dependency 'rash', '~> 0.4.0'
  spec.add_dependency 'virtus', '~> 1.0.2'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'vcr'
end
