class ChangeMemberIngredientIdInPantryItemsToRecipeIngredientId < ActiveRecord::Migration[5.0]
  def change
  	rename_column :pantry_items, :member_ingredient_id, :recipe_ingredient_id
  end
end
