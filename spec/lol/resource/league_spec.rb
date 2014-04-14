require 'spec_helper'

describe RiotGamesApi::LOL::Resource::League, :vcr do
  let(:client) { RiotGamesApi::LOL::Client.new }
  let(:phantoml0ad) { 19347723 } # famous player
  let(:ojarusang) { 34682697 } # my friend
  let(:rascal_jester) { 'TEAM-a3641570-5f29-11e3-bf0e-782bcb4d0bb2' } # japanese pro LoL team
  let(:ffg_practice) { 'TEAM-1991eb20-a33e-11e3-b439-782bcb4d1861' } # team in challenger

  describe '#by_summoner_id' do
    let(:league_first) { client.leagues.by_summoner_id(phantoml0ad).first }

    it "should phantoml0ad is in league which name is Nasus's Agents" do
      league_first.name.should eq "Nasus's Agents"
    end

    it 'should have league item entries' do
      league_first.entries.first.class.should eq RiotGamesApi::LOL::Model::League::LeagueItem
    end
  end

  describe '#by_summoner_id_only_own_entry' do
    let(:league_first) { client.leagues.by_summoner_id_only_own_entry(ojarusang).first }

    it "should ojarusang's tier is platinum" do
      league_first.tier.should eq 'PLATINUM'
    end

    it 'should ojarusang is in series' do
      league_first.mini_series.should_not nil
    end
  end

  describe '#by_team_id' do
    let(:league_first) { client.leagues.by_team_id(rascal_jester).first }

    it "should rascal jester is in league which name is Nunu's Outriders" do
      league_first.name.should eq "Nunu's Outriders"
    end

    it 'should have league item entries' do
      league_first.entries.first.class.should eq RiotGamesApi::LOL::Model::League::LeagueItem
    end
  end

  describe '#by_team_id_only_own_entry' do
    let(:league_first) { client.leagues.by_team_id_only_own_entry(ffg_practice).first }

    it 'should ffg practice tier is challenger' do
      league_first.tier.should eq 'CHALLENGER'
    end

    it 'should ffg practice is not in series' do
      league_first.mini_series.should nil
    end
  end

  describe '#challenger_solo_5v5' do
    let(:player_in_challenger) { client.leagues.challenger_solo_5v5.entries.sample }

    it 'should tier is challenger' do
      player_in_challenger.tier.should eq 'CHALLENGER'
    end

    it 'should queue is ranked solo 5v5' do
      player_in_challenger.queue_type.should eq 'RANKED_SOLO_5x5'
    end
  end

  describe '#challenger_team_5v5' do
    let(:team_in_challenger) { client.leagues.challenger_team_5v5.entries.sample }

    it 'should tier is challenger' do
      team_in_challenger.tier.should eq 'CHALLENGER'
    end

    it 'should queue is ranked team 5v5' do
      team_in_challenger.queue_type.should eq 'RANKED_TEAM_5x5'
    end
  end

  describe '#challenger_team_3v3' do
    let(:team_in_challenger) { client.leagues.challenger_team_3v3.entries.sample }

    it 'should tier is challenger' do
      team_in_challenger.tier.should eq 'CHALLENGER'
    end

    it 'should queue is ranked team 3v3' do
      team_in_challenger.queue_type.should eq 'RANKED_TEAM_3x3'
    end
  end
end
