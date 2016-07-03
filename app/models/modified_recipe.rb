class ModifiedRecipe < ApplicationRecord

	has_many :required_ingredients, as: :recipeable
end
