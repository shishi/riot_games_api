# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'riot_games_api/version'

Gem::Specification.new do |spec|
  spec.name          = "riot_games_api"
  spec.version       = RiotGamesApi::VERSION
  spec.authors       = ["Shigenobu Nishikawa"]
  spec.email         = ["shishi.s.n@gmail.com"]
  spec.summary       = %q{ Make easy to access Riot Games API. }
  spec.description   = %q{ Make easy to access Riot Games API to get their game data like League of Legends. }
  spec.homepage      = "https://github.com/shishi/riot_games_api"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'json'
  spec.add_runtime_dependency 'faraday', ['>= 0.7.4', '< 0.10']
  spec.add_runtime_dependency 'faraday_middleware', '~> 0.9.1'
  spec.add_runtime_dependency 'rash', '~> 0.4.0'
  spec.add_runtime_dependency 'virtus'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'vcr'
  spec.add_development_dependency 'codeclimate-test-reporter'
end
