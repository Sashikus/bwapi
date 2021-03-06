module BWAPI
  class Client
    module CommandCenter
      # Themes module for commandcenter/themes endpoints
      module Themes
        # Get themes for client
        #
        # @return [Hash] All themes
        def themes
          get 'commandcenter/themes'
        end
      end
    end
  end
end
