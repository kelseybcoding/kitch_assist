class Recipe < ApplicationRecord

	# has_many :images

	
	has_many :required_ingredients, as: :recipeable #don't touch this line
	has_many :ingredients, through: :required_ingredients


end
