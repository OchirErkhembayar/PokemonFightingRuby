class AddHealthAndDamageToBattlemon < ActiveRecord::Migration[6.1]
  def change
    add_column :battlemons, :health, :integer
    add_column :battlemons, :damage, :integer
  end
end
