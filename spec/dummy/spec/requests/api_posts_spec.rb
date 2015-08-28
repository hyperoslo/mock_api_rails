require 'rails_helper'

RSpec.describe 'ApiPosts', type: :request do
  describe 'GET /api/posts' do
    it 'returns the list of posts in the system' do
      get '/api/posts'
      expect(response).to have_http_status(200)
      json = JSON.load(response.body).deep_symbolize_keys
      expect(json).to eq(
        posts: [
          {
            id: 1,
            title: 'You know what it is awesome?',
            content: 'Everything'
          },
          {
            id: 2,
            title: 'Full Stack Fest will be cool',
            content: 'Because the @hyperoslo crew is going!'
          }
        ]
      )
    end
  end
end
