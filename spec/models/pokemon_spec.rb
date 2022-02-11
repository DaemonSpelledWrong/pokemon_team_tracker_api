require 'rails_helper'

RSpec.describe Pokemon, type: :model do
  it "requires a name to be created" do
    pokemon = Pokemon.new(
      base_hp: 1,
      base_attack: 1,
      base_defense: 1,
      base_special_attack: 1,
      base_special_defense: 1,
      base_speed: 1
    )
    expect { 
      pokemon.save 
    }.to raise_error(ActiveRecord::NotNullViolation)
  end

  it "requires a base_hp to be created" do
    pokemon = Pokemon.new(
      name: 'Testermon',
      base_attack: 1,
      base_defense: 1,
      base_special_attack: 1,
      base_special_defense: 1,
      base_speed: 1
    )
    expect { 
      pokemon.save 
    }.to raise_error(ActiveRecord::NotNullViolation)
  end

  it "requires a base_attack to be created" do
    pokemon = Pokemon.new(
      name: 'Testermon',
      base_hp: 1,
      base_defense: 1,
      base_special_attack: 1,
      base_special_defense: 1,
      base_speed: 1
    )
    expect { 
      pokemon.save 
    }.to raise_error(ActiveRecord::NotNullViolation)
  end

  it "requires a base_defense to be created" do
    pokemon = Pokemon.new(
      name: 'Testermon',
      base_hp: 1,
      base_attack: 1,
      base_special_attack: 1,
      base_special_defense: 1,
      base_speed: 1
    )
    expect { 
      pokemon.save 
    }.to raise_error(ActiveRecord::NotNullViolation)
  end

  it "requires a base_special_attack to be created" do
    pokemon = Pokemon.new(
      name: 'Testermon',
      base_hp: 1,
      base_attack: 1,
      base_defense: 1,
      base_special_defense: 1,
      base_speed: 1
    )
    expect { 
      pokemon.save 
    }.to raise_error(ActiveRecord::NotNullViolation)
  end

  it "requires a base_special_defense to be created" do
    pokemon = Pokemon.new(
      name: 'Testermon',
      base_hp: 1,
      base_attack: 1,
      base_defense: 1,
      base_special_attack: 1,
      base_speed: 1
    )
    expect { 
      pokemon.save 
    }.to raise_error(ActiveRecord::NotNullViolation)
  end

  it "requires a base_speed to be created" do
    pokemon = Pokemon.new(
      name: 'Testermon',
      base_hp: 1,
      base_attack: 1,
      base_defense: 1,
      base_special_attack: 1,
      base_special_defense: 1,
    )
    expect { 
      pokemon.save 
    }.to raise_error(ActiveRecord::NotNullViolation)
  end
end
