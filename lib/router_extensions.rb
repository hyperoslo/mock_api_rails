# Extensions for the rails router class
module ActionDispatch
  module Routing
    # Rails mapper methods
    class Mapper
      # Mock APIs
      #
      # mocking apis can be really useful to get a quick idea of how the api
      # should work, in order to add a mock of an api you call:
      #
      # mock_api http_method, url, status (optional)
      #
      # - http_method: get, put, patch, delete, post, etc.
      # - url: the url which will be appended to /api
      # - status (optional): the desired status code response
      #
      # then **it's very important** to place the reponse body in a json file on
      # the `api_mocks` directory, the name is automatically infered from the
      # http_method and url of the mocked api
      #
      # Example:
      #
      #   mock_api :get, '/groups/:group_id/users/:id', status: 203
      #
      #   will automatically look for the file
      #
      #     `api_mocks/get_groups_group_id_users_id.json`
      #
      #   in order to provide the appropiate response
      def mock_api(method, path, options = {})
        options[:method] = method
        options[:path]   = path
        send(method, path, to: 'mocks#show', mock_data: options)
      end
    end
  end
end
