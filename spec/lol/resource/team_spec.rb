require 'spec_helper'

describe RiotGamesApi::LOL::Resource::Team, :vcr do
  let(:client) { RiotGamesApi::LOL::Client.new }
  let(:yutaproid) { 21374340 }
  let(:detfm) { 'TEAM-e4651800-bec9-11e1-a3be-782bcb4d0bb2' }

  describe '#by_summoner_id' do
    let(:teams) { client.team.by_summoner_id [yutaproid] }

    it 'should have team model' do
      teams.first.teams.first.class.should eq RiotGamesApi::LOL::Model::Team::Team
    end

    it "should have detfm's full id" do
      teams.first.teams.first.full_id.should eq detfm
    end
  end

  describe '#by_team_id' do
    let(:team) { client.team.by_team_id [detfm] }

    it 'should have team model' do
      team.first.values.first.class.should eq RiotGamesApi::LOL::Model::Team::Team
    end
  end
end
