json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :title, :servings, :prep_time, :cook_time, :instructions
  json.url recipe_url(recipe, format: :json)
end
