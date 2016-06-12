class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.integer :servings
      t.string :prep_time
      t.string :cook_time
      t.string :image
      t.text :instructions

      t.timestamps
    end
  end
end
