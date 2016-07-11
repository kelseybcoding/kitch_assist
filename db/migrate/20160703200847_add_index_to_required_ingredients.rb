class AddIndexToRequiredIngredients < ActiveRecord::Migration[5.0]
  def change
  	add_index :required_ingredients, [:recipeable_type, :recipeable_id]
  end
end
