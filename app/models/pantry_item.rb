class PantryItem < ApplicationRecord

	belongs_to :member
	belongs_to :ingredient

	validates :quantity, presence: true
	validates :units, presence: true

end
