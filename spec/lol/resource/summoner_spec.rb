require 'spec_helper'

describe RiotGamesApi::LOL::Resource::Summoner, :vcr do
  let(:client) { RiotGamesApi::LOL::Client.new }
  let(:summoner_id) { 42139310 }
  let(:summoner_name) { 'shishisn' }
  let(:summoner_level) { 30 }

  describe '#by_name' do
    let(:summoner) { client.summoner.by_name summoner_name }

    it 'should have key which is summoner name' do
      summoner.keys.first.should eq summoner_name
    end

    it 'should have summoner model' do
      summoner.values.first.class.should eq RiotGamesApi::LOL::Model::Summoner::Summoner
    end

    it 'should summoner model have summoner level' do
      summoner.values.first.summoner_level.should eq summoner_level
    end
  end

  describe '#by_id' do
    let(:summoner) { client.summoner.by_id summoner_id }

    it 'should have key which is summoner id' do
      summoner.keys.first.should eq summoner_id
    end

    it 'should have summoner model' do
      summoner.values.first.class.should eq RiotGamesApi::LOL::Model::Summoner::Summoner
    end

    it 'should summoner model have summoner level' do
      summoner.values.first.summoner_level.should eq summoner_level
    end
  end

  describe '#masteries' do
    let(:masteries) { client.summoner.masteries summoner_id }

    it 'should have key which is summoner id' do
      masteries.keys.first.should eq summoner_id
    end

    it 'should have mastery page list model' do
      masteries.values.first.class.should eq RiotGamesApi::LOL::Model::Summoner::MasteryPageList
    end

    it 'should have mastery page model' do
      masteries.values.first.pages.first.class.should eq RiotGamesApi::LOL::Model::Summoner::MasteryPage
    end
  end

  describe '#name' do
    let(:name) { client.summoner.name summoner_id }

    it 'should have summoner name' do
      name.values.first.should eq summoner_name
    end
  end

  describe '#runes' do
    let(:runes) { client.summoner.runes summoner_id }

    it 'should have key which is summoner id' do
      runes.keys.first.should eq summoner_id
    end

    it 'should have rune  page list model' do
      runes.values.first.class.should eq RiotGamesApi::LOL::Model::Summoner::RunePageList
    end

    it 'should have rune page model' do
      runes.values.first.pages.first.class.should eq RiotGamesApi::LOL::Model::Summoner::RunePage
    end
  end
end
