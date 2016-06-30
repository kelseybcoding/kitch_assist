class RenameAttributesInRecipesToYummlyAttributes < ActiveRecord::Migration[5.0]
  def change
  	rename_column :recipes, :attributes, :yummly_attributes
  end
end
