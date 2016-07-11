class RenameDescriptionToNameInIngredient < ActiveRecord::Migration[5.0]
  def change
  	rename_column :ingredients, :category, :name
  end
end
