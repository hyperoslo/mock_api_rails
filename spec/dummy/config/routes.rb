Rails.application.routes.draw do
  scope :api do
    mock_api :get, '/posts'
  end
end
