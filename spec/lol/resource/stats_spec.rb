require 'spec_helper'

describe RiotGamesApi::LOL::Resource::Stats, :vcr do
  let(:client) { RiotGamesApi::LOL::Client.new }
  let(:summoner_id) { 64878685 }
  let(:season4) { 'SEASON2014' }
  let(:season5) { 'SEASON2015' }

  describe '#ranked' do
    context 'season4' do
      let(:ranked_stats) { client.stats.ranked summoner_id, season4 }


      it 'should not found ranked stats' do
        expect{ ranked_stats }.to raise_error Faraday::Error::ResourceNotFound
      end
    end

    context 'latest season' do
      let(:ranked_stats) { client.stats.ranked summoner_id }

      it 'should have champion stats' do
        ranked_stats.champions.first.class.should eq RiotGamesApi::LOL::Model::Stats::ChampionStats
      end
    end
  end

  describe '#summary' do
    context 'season5' do
      let(:summary_stats) { client.stats.summary summoner_id, season5 }

      it 'should have summoner id inputed' do
        summary_stats.summoner_id.should eq summoner_id
      end

      it 'should have player stat summaries' do
        summary_stats.player_stat_summaries.first.class.should eq RiotGamesApi::LOL::Model::Stats::PlayerStatsSummary
      end
    end

    context 'latest season' do
      let(:summary_stats) { client.stats.summary summoner_id }

      it 'should have summoner id inputed' do
        summary_stats.summoner_id.should eq summoner_id
      end

      it 'should have player stat summaries' do
        summary_stats.player_stat_summaries.first.class.should eq RiotGamesApi::LOL::Model::Stats::PlayerStatsSummary
      end
    end
  end
end
