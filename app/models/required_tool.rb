class RequiredTool < ApplicationRecord

	belongs_to :recipe
	belongs_to :kitchen_tool
end
