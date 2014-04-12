require 'spec_helper'

describe 'RiotGamesApi::LoL::Resource::Chapmpion' do
  let(:client) { RiotGamesApi::LOL::Client.new api_key: 'test_key' }

  describe '#all' do
    it 'should first record is Aatrox' do
      VCR.use_cassette 'lol_resource_champion_all' do
        client.champions.all.champions.first.id.should eq 266
      end
    end
  end

  describe '#free' do
    it 'should be only free champions' do
      VCR.use_cassette 'lol_resource_champion_free' do
        client.champions.free.champions.each do |c|
          c.freeToPlay.should eq true
        end
      end
    end
  end
end
