module RiotGamesApi
  module LOL
    module Resource
      class Base
        def initialize(connection, region)
          @connection = connection
          @region = region
        end

        private

        # access api endpoint
        # @param [String] resource_path api endpoint different each resources
        # @param [String, Integer] version api version
        # @param [Hash] options
        # @return [Hashie]
        def get(resource_path, version, options = {})
          @connection.get(api_endpoint(resource_path, version), options).body
        end

        # Return api endpoint string
        # @param [String] resource_path
        # @param [String, Integer] version api version
        # @return [String] api endpoint
        def api_endpoint(resource_path, version)
          "api/lol/#{@region}/#{version}/#{resource_path}"
        end

        # Return neated string params
        # @param [Array] params
        # @return [String] string joined array and trimed
        def neat_params(params)
          params.join(',').gsub(/\s/, '')
        end
      end
    end
  end
end
