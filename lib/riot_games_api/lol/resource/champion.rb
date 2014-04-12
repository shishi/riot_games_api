module RiotGamesApi
  module LOL
    module Resource
      class Champion < Base
        def initialize(connection, region)
          super
          @version = 'v1.2'
        end

        def resource_path
          'champion'
        end

        def all
          get resource_path, @version
        end

        def free
          get resource_path, @version, freeToPlay: true
        end
      end
    end
  end
end
