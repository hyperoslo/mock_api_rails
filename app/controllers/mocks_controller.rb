class MocksController < ApplicationController
  def show
    mock = Mock.new(params[:mock_data])
    add_mock_headers_to_response(mock)
    render json: mock.body, status: mock.status
  end

  private

  def add_mock_headers_to_response(mock)
    mock.headers.each_pair do |key, value|
      response.headers[key] = value
    end
  end
end
