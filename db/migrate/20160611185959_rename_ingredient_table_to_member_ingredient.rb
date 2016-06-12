class RenameIngredientTableToMemberIngredient < ActiveRecord::Migration[5.0]
  def change
  	rename_table :ingredients, :member_ingredients
  end
end
