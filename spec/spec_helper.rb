require_relative '../lib/riot_games_api'

require 'rspec/autorun'
require 'webmock/rspec'
require 'vcr'

RSpec.configure do |c|
  c.treat_symbols_as_metadata_keys_with_true_values = true
end

VCR.configure do |c|
  c.cassette_library_dir = 'spec/vcr_cassettes'
  c.hook_into :webmock
  c.filter_sensitive_data('test_key') { ENV['RIOT_GAMES_API_KEY'] }
  c.configure_rspec_metadata!
end
