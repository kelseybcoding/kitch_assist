class Recipe < ApplicationRecord

	has_many :images

	has_many :required_ingredients
	has_many :ingredients, through: :required_ingredients

	has_many :required_tools
	has_many :kitchen_tools, through: :required_tools

	has_many :required_ingredients, as: :recipeable

end
