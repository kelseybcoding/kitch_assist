class AddCategoryToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :category, :string
  end
end
