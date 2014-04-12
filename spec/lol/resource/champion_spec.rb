require 'spec_helper'

describe 'RiotGamesApi::LoL::Resource::Chapmpion', :vcr do
  let(:client) { RiotGamesApi::LOL::Client.new }

  describe '#all' do
    it 'should first record is Aatrox' do
      client.champions.all.champions.first.id.should eq 266
    end
  end

  describe '#free' do
    it 'should be only free champions' do
      client.champions.free.champions.each do |c|
        c.freeToPlay.should eq true
      end
    end
  end
end
