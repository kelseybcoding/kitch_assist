class Member < ApplicationRecord
	has_secure_password
	
	has_many :pantry_items
	has_many :ingredients, through: :pantry_items
	has_many :required_ingredients, through: :ingredients
	has_many :recipes, through: :required_ingredients

end
