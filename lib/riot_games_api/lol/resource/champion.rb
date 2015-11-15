module RiotGamesApi
  module LOL
    module Resource
      class Champion < Base
        def initialize(connection, region)
          super
          @version = 'v1.2'
        end

        # Return all champions data which is active, free to play etc.
        # @return [Array] Champions in Array
        def all
          get(resource_path, @version).champions.map do |champion|
            RiotGamesApi::LOL::Model::Champion::Champion.new champion
          end
        end

        # Return free-to-play champions data
        # @return [Array] Champions in Array
        def free
          get(resource_path, @version, freeToPlay: true).champions.map do |champion|
            RiotGamesApi::LOL::Model::Champion::Champion.new champion
          end
        end

        # Return specific champions data by id
        # @return [Champion]
        def by_champion_id(champion_id)
          champion = get(resource_path(champion_id), @version)
          RiotGamesApi::LOL::Model::Champion::Champion.new champion
        end

        private

        def resource_path(champion_id = nil)
          if champion_id
            "champion/#{champion_id}"
          else
            'champion'
          end
        end
      end
    end
  end
end
