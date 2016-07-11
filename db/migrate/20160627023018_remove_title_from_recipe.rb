class RemoveTitleFromRecipe < ActiveRecord::Migration[5.0]
  def change
    remove_column :recipes, :title, :string
  end
end
