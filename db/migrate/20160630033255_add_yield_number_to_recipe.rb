class AddYieldNumberToRecipe < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :yield_number, :integer
  end
end
