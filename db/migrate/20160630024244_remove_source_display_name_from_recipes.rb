class RemoveSourceDisplayNameFromRecipes < ActiveRecord::Migration[5.0]
  def change
    remove_column :recipes, :source_display_name, :string
  end
end
