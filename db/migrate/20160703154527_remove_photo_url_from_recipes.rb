class RemovePhotoUrlFromRecipes < ActiveRecord::Migration[5.0]
  def change
    remove_column :recipes, :photo_url, :string
  end
end
