class CreatePantryItems < ActiveRecord::Migration[5.0]
  def change
    create_table :pantry_items do |t|
      t.integer :member_id
      t.integer :member_ingredient_id
      t.date :expiration_date
      t.integer :quantity
      t.string :units

      t.timestamps
    end
  end
end
