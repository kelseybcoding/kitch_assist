namespace :recipes do
	desc 'find recipe ids'
	task :load => :environment do
		app_key = ENV["app_key"]
		recipes = Unirest.get("http://api2.bigoven.com/recipes?pg=1&rpp=20&api_key=#{app_key}", headers:{ "Accept" => "application/json" }).body["Results"]
		recipes.each do |recipe|
			Recipe.create(source_id: recipe["RecipeID"])
		end
	end

	desc 'get recipes'
	task :create => :environment do
		Recipe.all.each do |recipe|
			if !recipe.source_id.nil?
				bigoven_recipe = Unirest.get("http://api2.bigoven.com/recipe/#{recipe.source_id}?api_key=#{ENV["app_key"]}", headers:{ "Accept" => "application/json" }).body
			recipe.update(
				servings: [""]
				prep_time: [""]
				cook_time: [""]
				instructions: [""]
				recipe_name: [""]
				)
				bigoven_recipe["Ingredients"].each do |bigo_ingredient|
					ingredient = Ingredient.create(name: bigo_ingredient["Name"])
					RequiredIngredient.create(recipe_id: recipe.id, ingredient_id: ingredient.id, quantity: bigo_ingredient["DisplayQuantity"], units: bigo_ingredient["Unit"])
				end
			end
		end
	end	
end