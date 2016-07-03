class RequiredIngredient < ApplicationRecord

	belongs_to :ingredient
	belongs_to :recipe

	belongs_to :recipeable, polymorphic: true
end
