require 'spec_helper'

describe RiotGamesApi::LOL::Resource::Game, :vcr do
  let(:client) { RiotGamesApi::LOL::Client.new }
  let(:summoner_id) { 42139310 }
  let(:talon) { 91 }

  describe '#recent' do
    let(:recent_games) { client.games.recent summoner_id }

    it 'should have summoner id' do
      recent_games.summoner_id.should eq summoner_id
    end

    it 'should champinons is Talon in first game record' do
      recent_games.games.first.champion_id.should eq talon
    end

    it 'should game records count is 10' do
      recent_games.games.count.should eq 10
    end
  end
end
