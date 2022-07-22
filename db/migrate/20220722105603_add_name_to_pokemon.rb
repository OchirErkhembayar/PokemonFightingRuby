class AddNameToPokemon < ActiveRecord::Migration[6.1]
  def change
    add_column :pokemons, :name, :string
  end
end
