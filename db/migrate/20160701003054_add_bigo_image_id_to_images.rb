class AddBigoImageIdToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :bigo_image_id, :integer
  end
end
