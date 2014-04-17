module RiotGamesApi
  module LOL
    module Resource
      class StaticData < Base
        def initialize(connection, region)
          super
          @version = 'v1.2'
        end

        def champion_all(key_by_id = false, data_version = nil)
          champions = if key_by_id
                        get(resource_path_for_champion_all, @version, champData: 'all', dataById: true, version: data_version)
                      else
                        get(resource_path_for_champion_all, @version, champData: 'all', dataById: false, version: data_version)
                      end
          RiotGamesApi::LOL::Model::StaticData::ChampionList.new champions
        end

        def champion_by_id(champion_id, key_by_id = false, data_version = nil)
          champion = if key_by_id
                        get(resource_path_for_champion_by_id(champion_id), @version, champData: 'all', dataById: true, version: data_version)
                      else
                        get(resource_path_for_champion_by_id(champion_id), @version, champData: 'all', dataById: false, version: data_version)
                      end
          RiotGamesApi::LOL::Model::StaticData::Champion.new champion
        end

        def item_all(data_version = nil)
          items = get(resource_path_for_item_all, @version, itemListData: 'all', version: data_version)
          RiotGamesApi::LOL::Model::StaticData::ItemList.new items
        end

        def item_by_id(item_id, data_version = nil)
          item = get(resource_path_for_item_by_id(item_id), @version, itemData: 'all', version: data_version)
          RiotGamesApi::LOL::Model::StaticData::Item.new item
        end

        def mastery_all(data_version = nil)
          masteries = get(resource_path_all('mastery'), @version, masteryListData: 'all', version: data_version)
          RiotGamesApi::LOL::Model::StaticData::MasteryList.new masteries
        end

        def mastery_by_id(mastery_id, data_version = nil)
          mastery = get(resource_path_by_id('mastery', mastery_id), @version, masteryData: 'all', version: data_version)
          RiotGamesApi::LOL::Model::StaticData::Mastery.new mastery
        end

        private

        def api_endpoint(resource_path, api_version)
          "api/lol/static-data/#{@region}/#{api_version}/#{resource_path}"
        end

        def resource_path_for_champion_all
          'champion'
        end

        def resource_path_for_champion_by_id(champion_id)
          "champion/#{champion_id}"
        end

        def resource_path_all(path)
          "#{path}"
        end

        def resource_path_by_id(path, target_id)
          "#{path}/#{target_id}"
        end
end
    end
  end
end
