require 'spec_helper'

describe RiotGamesApi::LOL::Resource::Champion, :vcr do
  let(:client) { RiotGamesApi::LOL::Client.new }
  let(:champions) { client.champions }
  let(:teemo) { 17 } # I HATE Teemo!

  describe '#all' do
    it 'should first record is Aatrox' do
      champions.all.first.id.should eq 266
    end
  end

  describe '#free' do
    it 'should be only free champions' do
      champions.free.each do |c|
        c.free_to_play.should eq true
      end
    end
  end

  describe '#by_champion_id' do
    it 'should be Teemo' do
      champions.by_champion_id(teemo).id.should eq teemo
    end
  end
end
