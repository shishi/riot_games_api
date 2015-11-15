require 'spec_helper'

describe RiotGamesApi::LOL::Resource::StaticData, :vcr do
  let(:client) { RiotGamesApi::LOL::Client.new }
  let(:data_version){ '5.22.3' }

  describe 'champion' do
    let(:shaco_id) { 35 }
    let(:shaco_key) { 'shaco' }
    let(:shaco_name) { 'Shaco' }

    # very heavy spec cause test data is too huge
    describe '#champion_all' do
      context 'key_by_id is false' do
        let(:champion_list) { client.static_data.champion_all false }

        it 'should have static data of champions' do
          champion_list.data.values.first.class.should eq RiotGamesApi::LOL::Model::StaticData::Champion
        end

        it 'should have static data key with champion name' do
          champion_list.data[shaco_key].name.should eq shaco_name
        end

        it 'should have inputed data version' do
          champion_list.version.should eq data_version
        end
      end

      context 'key_by_id is true' do
        let(:champion_list) { client.static_data.champion_all true }

        it 'should have static data of champion' do
          champion_list.data.values.first.class.should eq RiotGamesApi::LOL::Model::StaticData::Champion
        end

        it 'should have static data keys is champion id' do
          champion_list.data[shaco_id].name.should eq shaco_name
        end
      end
    end

    describe '#champion_by_id' do
      let(:shaco) { client.static_data.champion_by_id shaco_id }

      it 'should have static data of champion' do
        shaco.class.should eq RiotGamesApi::LOL::Model::StaticData::Champion
      end

      it 'should have data key is shaco' do
        shaco.key.should eq shaco_name
      end
    end
  end

  describe 'item' do
    let(:biscuit_name) { 'Total Biscuit of Rejuvenation' }
    let(:biscuit_id) { 2010 }

    describe '#item_all' do
      let(:item_list) { client.static_data.item_all }

      it 'should have static data with item name' do
        item_list.data[biscuit_id].name.should eq biscuit_name
      end

      it 'should have static data of items' do
        item_list.data.values.first.class.should eq RiotGamesApi::LOL::Model::StaticData::Item
      end

      it 'should have inputed data version' do
        item_list.version.should eq data_version
      end
    end
  end

  describe '#language_strings' do
    let(:language_strings) { client.static_data.language_strings }

    it 'should have static data of language_strings' do
      language_strings.class.should eq RiotGamesApi::LOL::Model::StaticData::LanguageString
    end
  end

  describe '#languages' do
    let(:languages) { client.static_data.languages }

    it 'should have static data' do
      languages.class.should eq Array
    end
  end

  describe '#map' do
    let(:map) { client.static_data.map }

    it 'should have static data of realm' do
      map.class.should eq RiotGamesApi::LOL::Model::StaticData::Map
    end

    it 'should have MapDetails class' do
      map.data.values.first.class.should eq RiotGamesApi::LOL::Model::StaticData::MapDetails
    end
  end

  describe 'mastery' do
    let(:feast_name) { 'Feast' }
    let(:feast_id) { 6122 }

    describe '#mastery_all' do
      let(:mastery_list) { client.static_data.mastery_all }

      it 'should have static data of masterys' do
        mastery_list.data.values.first.class.should eq RiotGamesApi::LOL::Model::StaticData::Mastery
      end

      it 'should have static data with mastery name' do
        mastery_list.data[feast_id].name.should eq feast_name
      end

      it 'should have inputed data version' do
        mastery_list.version.should eq data_version
      end
    end

    describe '#mastery_by_id' do
      let(:feast) { client.static_data.mastery_by_id feast_id }

      it 'should have static data of mastery' do
        feast.class.should eq RiotGamesApi::LOL::Model::StaticData::Mastery
      end

      it 'should have data name is sorcery' do
        feast.name.should eq feast_name
      end
    end
  end

  describe '#realm' do
    let(:realm) { client.static_data.realm }
    let(:cdn_url) { 'http://ddragon.leagueoflegends.com/cdn' }

    it 'should have static data of realm' do
      realm.class.should eq RiotGamesApi::LOL::Model::StaticData::Realm
    end

    it 'should have data cdn is cdn_url' do
      realm.cdn.should eq cdn_url
    end
  end

  describe 'rune' do
    let(:rune_name) { 'Quintessence of Ability Power' }
    let(:rune_id) { 5235 }

    describe '#rune_all' do
      let(:rune_list) { client.static_data.rune_all }

      it 'should have static data of runes' do
        rune_list.data.values.first.class.should eq RiotGamesApi::LOL::Model::StaticData::Rune
      end

      it 'should have static data with rune name' do
        rune_list.data[rune_id].name.should eq rune_name
      end

      it 'should have inputed data version' do
        rune_list.version.should eq data_version
      end
    end

    describe '#rune_by_id' do
      let(:rune) { client.static_data.rune_by_id rune_id }

      it 'should have static data of rune' do
        rune.class.should eq RiotGamesApi::LOL::Model::StaticData::Rune
      end

      it 'should have data name is rune name' do
        rune.name.should eq rune_name
      end
    end
  end

  describe 'summoner_spell' do
    let(:teleport_id) { 12 }
    let(:teleport_key) { 'summoner_teleport' }
    let(:teleport_name) { 'Teleport' }

    describe '#summoner_spell_all' do
      context 'key_by_id is false' do
        let(:summoner_spell_list) { client.static_data.summoner_spell_all false }

        it 'should have static data of summoner spell' do
          summoner_spell_list.data.values.first.class.should eq RiotGamesApi::LOL::Model::StaticData::SummonerSpell
        end

        it 'should have static data key with summoner spell name' do
          summoner_spell_list.data[teleport_key].name.should eq teleport_name
        end

        it 'should have inputed data version' do
          summoner_spell_list.version.should eq data_version
        end
      end

      context 'key_by_id is true' do
        let(:summoner_spell_list) { client.static_data.summoner_spell_all true }

        it 'should have static data of summoner spell' do
          summoner_spell_list.data.values.first.class.should eq RiotGamesApi::LOL::Model::StaticData::SummonerSpell
        end

        it 'should have static data keys is sumoner spell id' do
          summoner_spell_list.data[teleport_id].name.should eq teleport_name
        end
      end
    end

    describe '#summoner_spell_by_id' do
      let(:teleport) { client.static_data.summoner_spell_by_id teleport_id }

      it 'should have static data of summoner spell' do
        teleport.class.should eq RiotGamesApi::LOL::Model::StaticData::SummonerSpell
      end

      it 'should have data name is teleport' do
        teleport.name.should eq teleport_name
      end
    end

    describe '#versions' do
    let(:versions) { client.static_data.versions }

    it 'should have static data' do
      versions.class.should eq Array
    end
  end

  end
end
