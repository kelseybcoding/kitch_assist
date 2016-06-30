class AddYieldUnitToRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :yield_unit, :string
  end
end
