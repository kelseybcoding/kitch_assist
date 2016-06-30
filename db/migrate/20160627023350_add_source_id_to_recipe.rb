class AddSourceIdToRecipe < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :source_id, :string
  end
end
