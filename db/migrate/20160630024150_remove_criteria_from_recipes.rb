class RemoveCriteriaFromRecipes < ActiveRecord::Migration[5.0]
  def change
    remove_column :recipes, :criteria, :string
  end
end
