require 'rails_helper'

RSpec.describe "Homes", type: :request do
  describe "GET /" do
    it 'returns http success' do
      get '/'
      expect(response.status).to eq(200)
    end
  end

  describe "GET /about" do
    it 'returns http success' do
      get '/about'
      expect(response.status).to eq(200)
    end
  end


end
