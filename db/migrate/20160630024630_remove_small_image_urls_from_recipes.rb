class RemoveSmallImageUrlsFromRecipes < ActiveRecord::Migration[5.0]
  def change
    remove_column :recipes, :small_image_urls, :string
  end
end
