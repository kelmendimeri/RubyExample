require 'rails_helper'

RSpec.describe "Articles", type: :request do

  describe "GET /articles" do
    it 'returns http success' do
      get '/articles'
      expect(response.status).to eq(200)
    end
  end


end
