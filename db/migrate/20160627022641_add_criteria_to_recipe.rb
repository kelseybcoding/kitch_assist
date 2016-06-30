class AddCriteriaToRecipe < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :criteria, :string
  end
end
