require 'mock_api_rails/router_helpers'

ActionDispatch::Routing::Mapper.send :include, MockApiRails::RouterHelpers
