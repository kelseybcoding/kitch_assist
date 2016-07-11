class RemovePrepTimeFromRecipes < ActiveRecord::Migration[5.0]
  def change
    remove_column :recipes, :prep_time, :string
  end
end
