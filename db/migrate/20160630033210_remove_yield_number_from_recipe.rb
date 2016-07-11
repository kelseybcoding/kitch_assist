class RemoveYieldNumberFromRecipe < ActiveRecord::Migration[5.0]
  def change
    remove_column :recipes, :yield_number, :float
  end
end
