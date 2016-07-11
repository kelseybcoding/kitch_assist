class RemovePhotoUrlFromImages < ActiveRecord::Migration[5.0]
  def change
    remove_column :images, :photo_url, :string
  end
end
