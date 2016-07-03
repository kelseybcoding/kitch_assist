class AddRecipeableTypeToRequiredIngredients < ActiveRecord::Migration[5.0]
  def change
    add_column :required_ingredients, :recipeable_type, :string
  end
end
