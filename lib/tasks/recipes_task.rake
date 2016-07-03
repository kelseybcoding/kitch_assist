namespace :recipes do
	desc 'find recipe ids'
	task :load => :environment do
		app_key = ENV["app_key"]
		recipes = Unirest.get("http://api2.bigoven.com/recipes?&pg=22&rpp=25&api_key=#{app_key}", headers:{ "Accept" => "application/json" }).body["Results"]
		recipes.each do |recipe|
			Recipe.create(source_id: recipe["RecipeID"])
		end
	end

	desc 'get recipe details'
	task :create => :environment do
		app_key = ENV["app_key"]
		Recipe.all.each do |recipe|
			if !recipe.source_id.nil?
				bigoven_recipe = Unirest.get("http://api2.bigoven.com/recipe/#{recipe.source_id}?&api_key=#{ENV["app_key"]}", headers:{ "Accept" => "application/json" }).body
			recipe.update(
				title: bigoven_recipe["Title"],
				description: bigoven_recipe["Description"],
				total_time: bigoven_recipe["TotalMinutes"],
				yield_number: bigoven_recipe["YieldNumber"],
				yield_unit: bigoven_recipe["YieldUnit"],
				instructions: bigoven_recipe["Instructions"],
				cuisine: bigoven_recipe["Cuisine"],
				category: bigoven_recipe["Category"],
				image_url: bigoven_recipe["ImageUrl"],
				photo_url: bigoven_recipe["PhotoUrl"]
				)
				if !bigoven_recipe["Ingredients"].nil?
					bigoven_recipe["Ingredients"].each do |bigo_ingredient|
						ingredient = Ingredient.create(name: bigo_ingredient["Name"])
						RequiredIngredient.create(recipe_id: recipe.id, ingredient_id: ingredient.id, quantity: bigo_ingredient["DisplayQuantity"], units: bigo_ingredient["Unit"])
					end
				end
			end
		end
	end	
end