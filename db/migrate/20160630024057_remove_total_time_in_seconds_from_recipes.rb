class RemoveTotalTimeInSecondsFromRecipes < ActiveRecord::Migration[5.0]
  def change
    remove_column :recipes, :total_time_in_seconds, :integer
  end
end
