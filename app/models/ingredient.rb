class Ingredient < ApplicationRecord
	has_many :required_ingredients

	has_many :recipes, through: :required_ingredients
	has_many :modified_recipes, through: :required_ingredients

	has_many :pantry_items
	has_many :members, through: :pantry_items
end
