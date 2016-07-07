class Recipe < ApplicationRecord

	has_many :images

	has_many :required_ingredients
	has_many :ingredients, through: :required_ingredients



end
