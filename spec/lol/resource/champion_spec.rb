require 'spec_helper'

describe RiotGamesApi::LOL::Resource::Champion, :vcr do
  let(:client) { RiotGamesApi::LOL::Client.new }

  describe '#all' do
    it 'should first record is Aatrox' do
      client.champions.all.first.id.should eq 266
    end
  end

  describe '#free' do
    it 'should be only free champions' do
      client.champions.free.each do |c|
        c.free_to_play.should eq true
      end
    end
  end
end
