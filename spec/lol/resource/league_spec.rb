require 'spec_helper'

describe RiotGamesApi::LOL::Resource::League, :vcr do
  let(:client) { RiotGamesApi::LOL::Client.new }
  let(:phantoml0ad) { 19347723 }
  let(:hello_im_shishi) { 64878685 }
  let(:detfm) { 'TEAM-e4651800-bec9-11e1-a3be-782bcb4d0bb2' } # japanese pro LoL team
  let(:ftc_esports) { 'TEAM-d9b35f00-5284-11e5-8e3e-c81f66ddabda' } # team in challenger

  describe '#by_summoner_id' do
    let(:pl) { client.leagues.by_summoner_id([phantoml0ad]).first }

    it "should phantoml0ad is in league which name is Udyr's Duelists" do
      pl.leagues.first.name.should eq "Udyr's Duelists"
    end

    it 'should have league entries' do
      pl.leagues.first.entries.first.class.should eq RiotGamesApi::LOL::Model::League::LeagueEntry
    end
  end

  describe '#by_summoner_id_only_own_entry' do
    let(:me) { client.leagues.by_summoner_id_only_own_entry([hello_im_shishi]).first }

    it "should hello im shishi's tier is gold" do
      me.leagues.first.tier.should eq 'GOLD'
    end

    it 'should hello im shishi is not in series' do
      me.leagues.first.entries.first.mini_series.should nil
    end
  end

  describe '#by_team_id' do
    let(:dfm) { client.leagues.by_team_id([detfm]).first }

    it "should detfm is in league which name is Dr. Mundo's Spellslingers" do
      dfm.leagues.first.name.should eq "Dr. Mundo's Spellslingers"
    end

    it 'should have league entries' do
      dfm.leagues.first.entries.first.class.should eq RiotGamesApi::LOL::Model::League::LeagueEntry
    end
  end

  describe '#by_team_id_only_own_entry' do
    let(:ftc) { client.leagues.by_team_id_only_own_entry([ftc_esports]).first }

    it 'should ftc_esports tier is challenger' do
      ftc.leagues.first.tier.should eq 'CHALLENGER'
    end

    it 'should ftc_esports is not in series' do
      ftc.leagues.first.entries.first.mini_series.should nil
    end
  end

  describe '#challenger_solo_5v5' do
    let(:player_in_challenger) { client.leagues.challenger_solo_5v5 }

    it 'should tier is challenger' do
      player_in_challenger.tier.should eq 'CHALLENGER'
    end

    it 'should queue is ranked solo 5v5' do
      player_in_challenger.queue.should eq 'RANKED_SOLO_5x5'
    end
  end

  describe '#challenger_team_5v5' do
    let(:team_in_challenger) { client.leagues.challenger_team_5v5 }

    it 'should tier is challenger' do
      team_in_challenger.tier.should eq 'CHALLENGER'
    end

    it 'should queue is ranked team 5v5' do
      team_in_challenger.queue.should eq 'RANKED_TEAM_5x5'
    end
  end

  describe '#challenger_team_3v3' do
    let(:team_in_challenger) { client.leagues.challenger_team_3v3 }

    it 'should tier is challenger' do
      team_in_challenger.tier.should eq 'CHALLENGER'
    end

    it 'should queue is ranked team 3v3' do
      team_in_challenger.queue.should eq 'RANKED_TEAM_3x3'
    end
  end
end
