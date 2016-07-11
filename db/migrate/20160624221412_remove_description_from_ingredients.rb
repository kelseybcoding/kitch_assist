class RemoveDescriptionFromIngredients < ActiveRecord::Migration[5.0]
  def change
    remove_column :ingredients, :description, :string
  end
end
