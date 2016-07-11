class DropTableRecipesMembers < ActiveRecord::Migration[5.0]
  def change
  	drop_table :recipes_members
  end
end
