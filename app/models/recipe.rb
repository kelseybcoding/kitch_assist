class Recipe < ApplicationRecord

	has_many :required_ingredients
	has_many :recipe_ingredients, through: :required_ingredients

	has_many :required_tools
	has_many :kitchen_tools, through: :required_tools
end
