json.array! current_member.pantry_items do |pantry_item|
	json.id pantry_item.id
	json.name pantry_item.ingredient.name
	json.quantity pantry_item.quantity
	json.units pantry_item.units
	json.ingredient_id pantry_item.ingredient_id
end