require 'bwapi/client/projects/bulk_actions/mentions'
require 'bwapi/client/projects/bulk_actions/author'

module BWAPI
  class Client
    module Projects
      # BulkActions module for projects/bulkactions endpoint
      module BulkActions
        # Get all bulk actions in project
        #
        # @param project_id [Integer] Id of project
        # @param opts [Hash] options hash of parameters
        # @option opts [Integer] page Page of projects to retrieve
        # @option opts [Integer] pageSize Results per page of results
        # @option opts [String] sinceDate the start date to get bulk actions from
        # @return [Hash] All bulk actions in project
        def bulk_actions(project_id, opts = {})
          get "projects/#{project_id}/bulkactions", opts
        end

        include BWAPI::Client::Projects::BulkActions::Mentions
        include BWAPI::Client::Projects::BulkActions::Author
      end
    end
  end
end
