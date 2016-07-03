class AddPhotoUrlToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :photo_url, :string
  end
end
