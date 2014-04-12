module RiotGamesApi
  module LOL
    module Resource
      class Base
        def initialize(connection, region)
          @connection = connection
          @region = region
        end

        def get(resource_path, version, options = {})
          response = @connection.get(api_endpoint(resource_path, version), options).body
          JSON.parse response
        end

        def api_endpoint(resource_path, api_version)
          "api/lol/#{@region}/#{api_version}/#{resource_path}"
        end
      end
    end
  end
end
