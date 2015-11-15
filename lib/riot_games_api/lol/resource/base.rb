module RiotGamesApi
  module LOL
    module Resource
      class Base
        def initialize(connection, region)
          @connection = connection
          @region = region
        end

        private

        def get(resource_path, version, options = {})
          @connection.get(api_endpoint(resource_path, version), options).body
        end

        def api_endpoint(resource_path, api_version)
          "api/lol/#{@region}/#{api_version}/#{resource_path}"
        end

        def neat_params(params)
          params.join(',').gsub(/\s/, '')
        end
      end
    end
  end
end
