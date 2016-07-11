class RemoveImagesFromRecipe < ActiveRecord::Migration[5.0]
  def change
  	remove_column :recipes, :image, :string
  end
end
