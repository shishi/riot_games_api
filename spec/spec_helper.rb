require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start

require 'bundler/setup'
require 'riot_games_api'

require 'webmock/rspec'
require 'vcr'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = [:should, :expect]
  end
end

VCR.configure do |c|
  c.cassette_library_dir = 'spec/vcr_cassettes'
  c.hook_into :webmock
  c.filter_sensitive_data('test_key') { ENV['RIOT_GAMES_API_KEY'] }
  c.configure_rspec_metadata!
  c.ignore_hosts 'codeclimate.com'
end
