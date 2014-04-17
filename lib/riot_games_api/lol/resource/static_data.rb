module RiotGamesApi
  module LOL
    module Resource
      class StaticData < Base
        def initialize(connection, region)
          super
          @version = 'v1.2'
        end

        def champion_all(key_by_id = false, data_version = nil)
          if key_by_id
            champion_list = get(resource_path('champion'), @version, champData: 'all', dataById: true, version: data_version)
            RiotGamesApi::LOL::Model::StaticData::ChampionListDataById.new champion_list
          else
            champion_list = get(resource_path('champion'), @version, champData: 'all', dataById: false, version: data_version)
            RiotGamesApi::LOL::Model::StaticData::ChampionList.new champion_list
          end
        end

        def champion_by_id(champion_id, data_version = nil)
          champion = get(resource_path_by_id('champion', champion_id), @version, champData: 'all', version: data_version)
          RiotGamesApi::LOL::Model::StaticData::Champion.new champion
        end

        def item_all(data_version = nil)
          item_list = get(resource_path('item'), @version, itemListData: 'all', version: data_version)
          RiotGamesApi::LOL::Model::StaticData::ItemList.new item_list
        end

        def item_by_id(item_id, data_version = nil)
          item = get(resource_path_by_id('item', item_id), @version, itemData: 'all', version: data_version)
          RiotGamesApi::LOL::Model::StaticData::Item.new item
        end

        def mastery_all(data_version = nil)
          mastery_list = get(resource_path('mastery'), @version, masteryListData: 'all', version: data_version)
          RiotGamesApi::LOL::Model::StaticData::MasteryList.new mastery_list
        end

        def mastery_by_id(mastery_id, data_version = nil)
          mastery = get(resource_path_by_id('mastery', mastery_id), @version, masteryData: 'all', version: data_version)
          RiotGamesApi::LOL::Model::StaticData::Mastery.new mastery
        end

        def realm
          realm = get(resource_path('realm'), @version)
          RiotGamesApi::LOL::Model::StaticData::Realm.new realm
        end

        def rune_all(data_version = nil)
          rune_list = get(resource_path('rune'), @version, runeListData: 'all', version: data_version)
          RiotGamesApi::LOL::Model::StaticData::RuneList.new rune_list
        end

        def rune_by_id(rune_id, data_version = nil)
          rune = get(resource_path_by_id('rune', rune_id), @version, runeData: 'all', version: data_version)
          RiotGamesApi::LOL::Model::StaticData::Rune.new rune
        end

        def summoner_spell_all(key_by_id = false, data_version = nil)
          if key_by_id
            summoner_spell_list = get(resource_path('summoner-spell'), @version, spellData: 'all', dataById: true, version: data_version)
            RiotGamesApi::LOL::Model::StaticData::SummonerSpellListDataById.new summoner_spell_list
          else
            summoner_spell_list = get(resource_path('summoner-spell'), @version, spellData: 'all', dataById: false, version: data_version)
            RiotGamesApi::LOL::Model::StaticData::SummonerSpellList.new summoner_spell_list
          end
        end

        def summoner_spell_by_id(summoner_spell_id, data_version = nil)
          summoner_spell = get(resource_path_by_id('summoner-spell', summoner_spell_id), @version, spellData: 'all', version: data_version)
          RiotGamesApi::LOL::Model::StaticData::SummonerSpell.new summoner_spell
        end

        private

        def api_endpoint(resource_path, api_version)
          "api/lol/static-data/#{@region}/#{api_version}/#{resource_path}"
        end

        def resource_path(path)
          "#{path}"
        end

        def resource_path_by_id(path, target_id)
          "#{path}/#{target_id}"
        end
      end
    end
  end
end