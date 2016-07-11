class AddIngredientsToRecipe < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :ingredients, :string
  end
end
