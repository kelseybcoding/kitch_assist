class AddSourceDisplayNameToRecipe < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :source_display_name, :string
  end
end
