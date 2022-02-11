require 'rails_helper'

RSpec.describe "Pokemons", type: :request do
  testermon_attributes = {
    name: 'Testermon',
    base_hp: 1,
    base_attack: 1,
    base_defense: 1,
    base_special_attack: 1,
    base_special_defense: 1,
    base_speed: 1
  }
  altermon_attributes = {
    name: 'Altermon',
    base_hp: 1,
    base_attack: 1,
    base_defense: 1,
    base_special_attack: 1,
    base_special_defense: 1,
    base_speed: 1
  }
  let(:pokemon_array) { Array.new(3) { Pokemon.create(testermon_attributes) } }
  let(:pokemon) { Pokemon.create(altermon_attributes) }


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

      allow(response).to receive(:body).and_return(pokemon_array)
      expect(response.body).to match_array(pokemon_array)
    end
  end

  describe "GET /show" do
    it 'returns a :success status code' do
      get "/pokemon/#{}", headers: headers

      expect(response.content_type).to eq("application/json; charset=utf-8")
      expect(response).to have_http_status(:success)
    end

    it 'returns the requested instance of Pokemon' do
      get "/pokemon/#{pokemon.id}", headers: headers

      allow(response).to receive(:body).and_return(pokemon)
      expect(response.body).to match(pokemon)
    end
  end
end
