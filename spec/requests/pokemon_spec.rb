require 'rails_helper'

RSpec.describe "Pokemons", type: :request do
  let(:pokemon) { Array.new(3) { Pokemon.create(name: 'Testermon') } }

  before do
    headers = { "ACCEPT" => "application/json" }
  end

  describe "GET /index" do
    it 'returns a :success status code' do
      get '/pokemon', headers: headers

      expect(response.content_type).to eq("application/json; charset=utf-8")
      expect(response).to have_http_status(:success)
    end

    it 'returns all instances of Pokemon' do
      get '/pokemon', headers: headers
      
      allow(response).to receive(:body).and_return(pokemon)
      expect(response.body).to match_array(pokemon)
    end
  end
end
