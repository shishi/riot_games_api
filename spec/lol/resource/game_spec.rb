require 'spec_helper'

describe RiotGamesApi::LOL::Resource::Game, :vcr do
  let(:client) { RiotGamesApi::LOL::Client.new }
  let(:summoner_id) { 64878685 }
  let(:master_yi) { 11 }
  let(:blue_team) { 100 }

  describe '#recent' do
    let(:recent_games) { client.games.recent summoner_id }

    it 'should have summoner id' do
      recent_games.summoner_id.should eq summoner_id
    end

    it 'should champinons is Master Yi in first game record' do
      recent_games.games.first.champion_id.should eq master_yi
    end

    it 'should game records count is 10' do
      recent_games.games.count.should eq 10
    end

    it 'should game record have player model' do
      recent_games.games.first.fellow_players.first.class.should eq RiotGamesApi::LOL::Model::Game::Player
    end

    it "should first fellow player's team is blue" do
      recent_games.games.first.fellow_players.first.team_id.should eq blue_team
    end

    it 'should game record have raw stats model' do
      recent_games.games.first.stats.class.should eq RiotGamesApi::LOL::Model::Game::RawStats
    end

    it 'should first game is lose' do
      recent_games.games.first.stats.win.should eq false
    end
  end
end
