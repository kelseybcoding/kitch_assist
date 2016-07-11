class RequiredIngredient < ApplicationRecord

	belongs_to :ingredient
	belongs_to :recipeable, polymorphic: true #trouble

	has_one :self_reference, class_name: self, foreign_key: "id"
	has_one :recipe, through: :self_reference, source: :recipeable, source_type: 'Recipe'
	has_one :modified_recipe, through: :self_reference, source: :recipeable, source_type: 'ModifiedRecipe'

end
