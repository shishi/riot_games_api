module RiotGamesApi
  module LOL
    module Resource
      class Summoner < Base
        def initialize(connection, region)
          super
          @version = 'v1.4'
        end

        def by_name(summoner_name)
          summoner_name = summoner_name.gsub(/\s/, '')
          summoner = get(resource_path_by_name(summoner_name), @version)
          { summoner.keys.first => RiotGamesApi::LOL::Model::Summoner::Summoner.new(summoner.values.first) }
        end

        def by_id(summoner_id)
          summoner = get(resource_path_by_id(summoner_id), @version)
          { summoner.keys.first.to_i => RiotGamesApi::LOL::Model::Summoner::Summoner.new(summoner.values.first) }
        end

        def masteries(summoner_id)
          masteries = get(resource_path_by_id('masteries', summoner_id), @version)
          { masteries.keys.first.to_i => RiotGamesApi::LOL::Model::Summoner::MasteryPageList.new(masteries.values.first) }
        end

        def name(summoner_id)
          name = get(resource_path_by_id('name', summoner_id), @version)
          { name.keys.first.to_i => name.values.first}
        end

        def runes(summoner_id)
          runes = get(resource_path_by_id('runes', summoner_id), @version)
          { runes.keys.first.to_i => RiotGamesApi::LOL::Model::Summoner::RunePageList.new(runes.values.first) }
        end

        private

        def resource_path_by_name(summoner_name)
          "summoner/by-name/#{summoner_name}"
        end

        def resource_path_by_id(path = nil, summoner_id)
          if path
            "summoner/#{summoner_id}/#{path}"
          else
            "summoner/#{summoner_id}"
          end
        end
      end
    end
  end
end
