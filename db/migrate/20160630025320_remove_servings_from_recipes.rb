class RemoveServingsFromRecipes < ActiveRecord::Migration[5.0]
  def change
    remove_column :recipes, :servings, :string
  end
end
