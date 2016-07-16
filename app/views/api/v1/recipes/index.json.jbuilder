json.array! @recipes.each do | recipe |
	json.id recipe.id
	json.title recipe.title
	json.total_time recipe.total_time
	json.yield_number recipe.yield_number
	json.yield_unit recipe.yield_unit
end