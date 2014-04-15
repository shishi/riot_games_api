module RiotGamesApi
  module LOL
    module Resource
      class LOLStaticData < Base
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
          RiotGamesApi::LOL::Model::LOLStaticData::ChampionList.new champions
        end

        def champion_by_id(champion_id, key_by_id = false, data_version = nil)
          champion = if key_by_id
                        get(resource_path_for_champion_by_id(champion_id), @version, champData: 'all', dataById: true, version: data_version)
                      else
                        get(resource_path_for_champion_by_id(champion_id), @version, champData: 'all', dataById: false, version: data_version)
                      end
          RiotGamesApi::LOL::Model::LOLStaticData::Champion.new champion
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
      end
    end
  end
end
