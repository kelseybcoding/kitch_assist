class RenameMemberIngredientToRecipeIngredient < ActiveRecord::Migration[5.0]
  def change
  	rename_table :member_ingredients, :required_ingredients
  end
end
