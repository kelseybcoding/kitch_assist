class Member < ApplicationRecord
	has_secure_password

	has_many :pantry_items
	has_many :ingredients, through: :pantry_items

	has_many :owned_tools
	has_many :kitchen_tools, through: :owned_tools
end
