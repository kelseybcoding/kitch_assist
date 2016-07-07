class RemoveRecipeableTypeFromRequiredIngredients < ActiveRecord::Migration[5.0]
  def change
    remove_column :required_ingredients, :recipeable_type, :string
  end
end
