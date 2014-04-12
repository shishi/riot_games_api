require 'spec_helper'

describe RiotGamesApi::LOL::Resource::Game, :vcr do
  let(:client) { RiotGamesApi::LOL::Client.new }
  let(:summoner_id) { 42139310 }

  describe '#recent' do
    it 'should champinons is Talon in first game record' do
      client.games.recent(summoner_id).first.champion_id.should eq 91
    end

    it 'should game records count is 10' do
      client.games.recent(summoner_id).count.should eq 10
    end
  end
end
