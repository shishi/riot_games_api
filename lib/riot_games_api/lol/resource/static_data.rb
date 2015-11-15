module RiotGamesApi
  module LOL
    module Resource
      class StaticData < Base
        def initialize(connection, region)
          super
          @version = 'v1.2'
        end

        # Return all champion static data
        # @param [Boolean] key_by_id Set true if you want data hash key is ID, not name.
        # @param [String] data_version
        # @return [ChampionList]
        def champion_all(key_by_id = false, data_version = nil)
          champion_list = get(resource_path('champion'), @version, champData: 'all', dataById: key_by_id, version: data_version)

          if key_by_id
            RiotGamesApi::LOL::Model::StaticData::ChampionListDataById.new champion_list
          else
            RiotGamesApi::LOL::Model::StaticData::ChampionList.new champion_list
          end
        end

        # Return a champion static data by id
        # @param [String, Integer] champion_id
        # @param [String] data_version
        # @return [Champion]
        def champion_by_id(champion_id, data_version = nil)
          champion = get(resource_path('champion', champion_id), @version, champData: 'all', version: data_version)
          RiotGamesApi::LOL::Model::StaticData::Champion.new champion
        end

        # Return all item static data
        # @param [String] data_version
        # @return [ItemList]
        def item_all(data_version = nil)
          item_list = get(resource_path('item'), @version, itemListData: 'all', version: data_version)
          RiotGamesApi::LOL::Model::StaticData::ItemList.new item_list
        end

        # Return launguage strings static data
        # @param [String] data_version
        # @return [LanguageString]
        def language_strings(data_version = nil)
          language_string = get(resource_path('language-strings'), @version, version: data_version)
          RiotGamesApi::LOL::Model::StaticData::LanguageString.new language_string
        end

        # Return launguage list
        # @return Array language list
        def languages
          get(resource_path('languages'), @version)
        end

        # Return all map static data by id
        # @param [String] data_version
        # @return [Map]
        def map(data_version = nil)
          map = get(resource_path('map'), @version, version: data_version)
          RiotGamesApi::LOL::Model::StaticData::Map.new map
        end

        # Return all mastery static data
        # @param [String] data_version
        # @return [MateryList]
        def mastery_all(data_version = nil)
          mastery_list = get(resource_path('mastery'), @version, masteryListData: 'all', version: data_version)
          RiotGamesApi::LOL::Model::StaticData::MasteryList.new mastery_list
        end

        # Return a mastery static data by id
        # @param [String, Integer] mastery_id
        # @param [String] data_version
        # @return [Mastery]
        def mastery_by_id(mastery_id, data_version = nil)
          mastery = get(resource_path('mastery', mastery_id), @version, masteryData: 'all', version: data_version)
          RiotGamesApi::LOL::Model::StaticData::Mastery.new mastery
        end

        # Return realm static data by id
        # @return [Realm]
        def realm
          realm = get(resource_path('realm'), @version)
          RiotGamesApi::LOL::Model::StaticData::Realm.new realm
        end

        # Return all rune static data by id
        # @param [String] data_version
        # @return [RuneList]
        def rune_all(data_version = nil)
          rune_list = get(resource_path('rune'), @version, runeListData: 'all', version: data_version)
          RiotGamesApi::LOL::Model::StaticData::RuneList.new rune_list
        end

        # Return a rune static data by id
        # @param [String, Integer] rune_id
        # @param [String] data_version
        # @return [SummonerSpellList]
        def rune_by_id(rune_id, data_version = nil)
          rune = get(resource_path('rune', rune_id), @version, runeData: 'all', version: data_version)
          RiotGamesApi::LOL::Model::StaticData::Rune.new rune
        end

        # Return all summoner spell static data by id
        # @param [String] data_version
        # @return [Rune]
        def summoner_spell_all(key_by_id = false, data_version = nil)
          summoner_spell_list = get(resource_path('summoner-spell'), @version, spellData: 'all', dataById: key_by_id, version: data_version)

          if key_by_id
            RiotGamesApi::LOL::Model::StaticData::SummonerSpellListDataById.new summoner_spell_list
          else
            RiotGamesApi::LOL::Model::StaticData::SummonerSpellList.new summoner_spell_list
          end
        end

        # Return a summoner spell static data by id
        # @param [String, Integer] summoner_spell_id
        # @param [String] data_version
        # @return [SummonerSpell]
        def summoner_spell_by_id(summoner_spell_id, data_version = nil)
          summoner_spell = get(resource_path('summoner-spell', summoner_spell_id), @version, spellData: 'all', version: data_version)
          RiotGamesApi::LOL::Model::StaticData::SummonerSpell.new summoner_spell
        end

        # Return version list
        # @return Array version list
        def versions
          get(resource_path('versions'), @version)
        end

        private

        def api_endpoint(resource_path, api_version)
          "api/lol/static-data/#{@region}/#{api_version}/#{resource_path}"
        end

        def resource_path(path, target_id = nil)
          if target_id
            "#{path}/#{target_id}"
          else
            "#{path}"
          end
        end
      end
    end
  end
end
