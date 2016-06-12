class RequiredIngredient < ApplicationRecord

	belongs_to :recipe_ingredient
	belongs_to :recipe
end
