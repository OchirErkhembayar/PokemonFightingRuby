class CreateBattlemons < ActiveRecord::Migration[6.1]
  def change
    create_table :battlemons do |t|
      t.references :battle, null: false, foreign_key: true
      t.references :pokemon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
