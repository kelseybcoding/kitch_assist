class AddYieldNumberToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :yield_number, :float
  end
end
