class AddTotalTimeToRecipe < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :total_time, :integer
  end
end
