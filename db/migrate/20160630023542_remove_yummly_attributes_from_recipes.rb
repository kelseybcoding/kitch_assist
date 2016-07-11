class RemoveYummlyAttributesFromRecipes < ActiveRecord::Migration[5.0]
  def change
    remove_column :recipes, :yummly_attributes, :string
  end
end
