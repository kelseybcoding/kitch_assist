class OwnedTool < ApplicationRecord

	belongs_to :member
	belongs_to :kitchen_tool
end
