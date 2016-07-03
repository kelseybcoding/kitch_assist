class CreateModifiedRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :modified_recipes do |t|
      t.string :title
      t.integer :total_time
      t.string :yield_unit
      t.integer :yield_number
      t.text :instructions
      t.string :description

      t.timestamps
    end
  end
end
