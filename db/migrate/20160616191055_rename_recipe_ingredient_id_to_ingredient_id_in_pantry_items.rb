class RenameRecipeIngredientIdToIngredientIdInPantryItems < ActiveRecord::Migration[5.0]
  def change
  	rename_column :pantry_items, :recipe_ingredient_id, :ingredient_id
  end
end
