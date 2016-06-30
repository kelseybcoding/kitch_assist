class AddTotalTimeInSecondsToRecipe < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :total_time_in_seconds, :integer
  end
end
