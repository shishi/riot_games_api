require 'spec_helper'

describe 'RiotGamesApi::LoL::Resource::Game', :vcr do
  let(:client) { RiotGamesApi::LOL::Client.new }
  let(:summoner_id) { 42139310 }

  describe '#recent' do
    it 'should champinons is Xin Zhao in first game record' do
      client.games.recent(summoner_id).games.first.champion_id.should eq 5
    end

    it 'should game records count is 10' do
      client.games.recent(summoner_id).games.count.should eq 10
    end
  end
end
