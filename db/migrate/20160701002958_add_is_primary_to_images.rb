class AddIsPrimaryToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :is_primary, :boolean
  end
end
