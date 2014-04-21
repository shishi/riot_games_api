require 'spec_helper'

describe RiotGamesApi::LOL::Resource::Stats, :vcr do
  let(:client) { RiotGamesApi::LOL::Client.new }
  let(:summoner_id) { 42139310 }
  let(:season3) { 'SEASON3' }

  describe '#ranked' do
    context 'season3' do
      let(:ranked_stats) { client.stats.ranked summoner_id, season3 }
      let(:last_modified) { Time.at(1378635320) }

      it 'should have modify_data which unixtime milliseconds' do
        ranked_stats.modify_date.should eq last_modified
      end

      it 'should have champion stats' do
        ranked_stats.champions.first.class.should eq RiotGamesApi::LOL::Model::Stats::ChampionStats
      end
    end

    context 'latest season' do
      let(:ranked_stats) { client.stats.ranked summoner_id }

      it 'should not found ranked stats' do
        expect{ ranked_stats }.to raise_error Faraday::Error::ResourceNotFound
      end
    end
  end

  describe '#summary' do
    context 'season3' do
      let(:summary_stats) { client.stats.summary summoner_id, season3 }

      it 'should have summoner id inputed' do
        summary_stats.summoner_id.should eq summoner_id
      end

      it 'should have player stat summaries' do
        summary_stats.player_stat_summaries.first.class.should eq RiotGamesApi::LOL::Model::Stats::PlayerStatsSummary
      end
    end

    context 'latest season' do
      let(:summary_stats) { client.stats.summary summoner_id, season3 }

      it 'should have summoner id inputed' do
        summary_stats.summoner_id.should eq summoner_id
      end

      it 'should have player stat summaries' do
        summary_stats.player_stat_summaries.first.class.should eq RiotGamesApi::LOL::Model::Stats::PlayerStatsSummary
      end
    end
  end
end
