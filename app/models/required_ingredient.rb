class RequiredIngredient < ApplicationRecord

	belongs_to :ingredient
	belongs_to :recipeable, polymorphic: true #trouble
end
