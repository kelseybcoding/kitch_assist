class RenameRecipeableIdToRecipeIdInRequiredIngredients < ActiveRecord::Migration[5.0]
  def change
  	rename_column :required_ingredients, :recipeable_id, :recipe_id
  end
end
