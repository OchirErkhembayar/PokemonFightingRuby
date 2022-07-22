class CreatePokemons < ActiveRecord::Migration[6.1]
  def change
    create_table :pokemons do |t|
      t.integer :damage
      t.integer :health

      t.timestamps
    end
  end
end
