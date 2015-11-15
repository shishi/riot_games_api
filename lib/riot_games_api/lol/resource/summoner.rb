module RiotGamesApi
  module LOL
    module Resource
      class Summoner < Base
        def initialize(connection, region)
          super
          @version = 'v1.4'
        end

        # Return summoners data by summoner name
        # @param [Array] summoner_names summoner names in array
        # @return [Array] Summoner models in Array
        def by_name(summoner_names)
          neated_param = summoner_names.join(',').gsub(/\s/, '')
          summoners = get(resource_path_by_name(neated_param), @version)
          summoners.map do |summoner|
            RiotGamesApi::LOL::Model::Summoner::Summoner.new(summoner.last)
          end
        end

        # Return summoners data by summoner id
        # @param [Array] summoner_ids summoner ids in array
        # @return [Array] Summoner models in Array
        def by_id(summoner_ids)
          neated_param = neat_params(summoner_ids)
          summoners = get(resource_path_by_id(neated_param), @version)
          summoners.map do |summoner|
            RiotGamesApi::LOL::Model::Summoner::Summoner.new(summoner.last)
          end
        end

        # Return summoner mastaries by summoner id
        # @param [Array] summoner_ids summoner ids in Array
        # @return [Array] MasteryPageList models in Array
        def masteries(summoner_ids)
          neated_param = neat_params(summoner_ids)
          masteries = get(resource_path_by_id('masteries', neated_param), @version)
          masteries.map do |mastery|
            RiotGamesApi::LOL::Model::Summoner::MasteryPageList.new(mastery.last)
          end
#          { masteries.keys.first.to_i => ) }
        end

        # Return summoner names by summoner id
        # @param [Array] summoner_ids summoner ids in Array
        # @return [Array] Name models in Array
        def name(summoner_ids)
          neated_param = neat_params(summoner_ids)
          names = get(resource_path_by_id('name', neated_param), @version)
          names.map do |name|
            RiotGamesApi::LOL::Model::Summoner::Name.new(id: name.first, name: name.last)
          end
        end

        # Return summoner runes by summoner id
        # @param [Array] summoner_ids summoner ids in Array
        # @return [Array] RunePageList models in Array
        def runes(summoner_ids)
          neated_param = neat_params(summoner_ids)
          runes = get(resource_path_by_id('runes', neated_param), @version)
          runes.map do |rune|
            RiotGamesApi::LOL::Model::Summoner::RunePageList.new(rune.last)
          end
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
