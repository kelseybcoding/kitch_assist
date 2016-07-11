class RenameRecipeIngredientIdToIngredientIdInRequiredIngredients < ActiveRecord::Migration[5.0]
  def change
  	rename_column :required_ingredients, :recipe_ingredient_id, :ingredient_id
  end
end
