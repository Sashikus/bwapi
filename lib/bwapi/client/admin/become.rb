module BWAPI
  class Client
    module Admin
      # Become module for admin/become endpoint
      module Become
        # Become user
        #
        # @note must be a client admin user
        #
        # @param user_id [Integer] The user id
        # @return [Hash] User credentials
        def admin_become(user_id)
          get "admin/become/#{user_id}"
        end
      end
    end
  end
end
