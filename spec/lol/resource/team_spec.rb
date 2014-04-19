require 'spec_helper'

describe RiotGamesApi::LOL::Resource::Team, :vcr do
  let(:client) { RiotGamesApi::LOL::Client.new }
  let(:yutaproid) { 21374340 } # one of the best japanese player
  let(:focus_me) { 'TEAM-e4651800-bec9-11e1-a3be-782bcb4d0bb2' } # lol team yutaproid belongs to

  describe '#by_summoner_id' do
    let(:teams) { client.team.by_summoner_id yutaproid }

    it 'should have team model' do
      teams.first.class.should eq RiotGamesApi::LOL::Model::Team::Team
    end

    it "should have focus me's full id" do
      teams[1].full_id.should eq focus_me
    end
  end

  describe '#by_team_id' do
    let(:team) { client.team.by_team_id focus_me }

    it 'should have team model' do
      team.values.first.class.should eq RiotGamesApi::LOL::Model::Team::Team
    end

    it "should have key which is team id" do
      team.keys.first.should eq focus_me
    end
  end
end
