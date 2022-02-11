class AddBaseStatsToPokemons < ActiveRecord::Migration[6.1]
  def change
    add_column :pokemons, :base_hp, :integer, null: false
    add_column :pokemons, :base_attack, :integer, null: false
    add_column :pokemons, :base_defense, :integer, null: false
    add_column :pokemons, :base_special_attack, :integer, null: false
    add_column :pokemons, :base_special_defense, :integer, null: false
    add_column :pokemons, :base_speed, :integer, null: false
  end
end
