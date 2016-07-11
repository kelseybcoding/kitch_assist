class ChangeQuantityFromIntegerToDecimalInRequiredIngredient < ActiveRecord::Migration[5.0]
  def change
  	change_column :required_ingredients, :quantity, :decimal
  end
end
