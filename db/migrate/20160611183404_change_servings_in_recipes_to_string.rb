class ChangeServingsInRecipesToString < ActiveRecord::Migration[5.0]
  def change
  	change_column :recipes, :servings, :string
  end
end
