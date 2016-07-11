class AddAttributesToRecipe < ActiveRecord::Migration[5.0]
  def change
    add_column :recipes, :attributes, :string
  end
end
