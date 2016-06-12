class PantryItem < ApplicationRecord

	belongs_to :member
	belongs_to :recipe_ingredient

end
