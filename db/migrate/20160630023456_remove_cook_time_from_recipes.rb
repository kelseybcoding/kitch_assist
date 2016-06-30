class RemoveCookTimeFromRecipes < ActiveRecord::Migration[5.0]
  def change
    remove_column :recipes, :cook_time, :string
  end
end
