require 'rails_helper'

RSpec.describe Pokemon, type: :model do
  it "requires a name to be created" do
    pokemon = Pokemon.new
    expect { 
      pokemon.save 
    }.to raise_error(ActiveRecord::NotNullViolation)
  end


end
