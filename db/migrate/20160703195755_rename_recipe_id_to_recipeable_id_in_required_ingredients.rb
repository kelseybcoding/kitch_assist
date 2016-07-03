class RenameRecipeIdToRecipeableIdInRequiredIngredients < ActiveRecord::Migration[5.0]
  def change
  	rename_column :required_ingredients, :recipe_id, :recipeable_id
  end
end
