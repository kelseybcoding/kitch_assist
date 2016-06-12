class KitchenTool < ApplicationRecord

	has_many :owned_tools
	has_many :members, through: :owned_tools

	has_many :required_tools
	has_many :recipes, through: :required_tools
end
