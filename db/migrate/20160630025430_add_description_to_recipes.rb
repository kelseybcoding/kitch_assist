class AddDescriptionToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :description, :string
  end
end
