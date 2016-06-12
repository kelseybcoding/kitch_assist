json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :category, :description
  json.url ingredient_url(ingredient, format: :json)
end
