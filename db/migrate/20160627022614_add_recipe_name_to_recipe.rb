class AddRecipeNameToRecipe < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :recipe_name, :string
  end
end
