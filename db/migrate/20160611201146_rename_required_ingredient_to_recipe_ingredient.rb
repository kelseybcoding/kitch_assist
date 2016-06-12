class RenameRequiredIngredientToRecipeIngredient < ActiveRecord::Migration[5.0]
  def change
  	rename_table :required_ingredients, :recipe_ingredients
  end
end
