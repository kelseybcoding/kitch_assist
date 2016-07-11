class AddCuisineToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :cuisine, :string
  end
end
