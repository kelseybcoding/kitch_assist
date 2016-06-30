class RenameRecipeNameToTitleInRecipes < ActiveRecord::Migration[5.0]
  def change
  	rename_column :recipes, :recipe_name, :title
  end
end
