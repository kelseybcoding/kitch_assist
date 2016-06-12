class CreateRequiredIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :required_ingredients do |t|
      t.integer :recipe_ingredient_id
      t.integer :recipe_id
      t.integer :quantity
      t.string :units

      t.timestamps
    end
  end
end
