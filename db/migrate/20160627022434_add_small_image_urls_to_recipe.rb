class AddSmallImageUrlsToRecipe < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :small_image_urls, :string
  end
end
