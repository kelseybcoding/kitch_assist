# namespace :images do
# 	desc 'get recipe images'
# 	task :load => :environment do
# 		app_key = ENV["app_key"]
# 		images = Unirest.get("https://api2.bigoven.com/recipe/#{recipe.source_id}/photos?api_key=#{ENV["app_key"]}", headers:{ "Accept" => "application/json" }).body["Results"]
# 		images.each do |image|
# 			Image.create(
# 				bigo_image_id: images["ImageID"],
# 				photo_url: images["PhotoUrl"],
# 				is_primary: images["IsPrimary"],
# 				caption: images["Caption"]
# 				)
# 		end
# 	end
# end
	
	### attempt one ###		
# desc 'get recipe images'
# 	task :load => :environment do
# 		app_key = ENV["app_key"]
# 		Recipe.all.each do |recipe|
# 			if !recipe.source_id.nil?
# 				bigoven_images = Unirest.get("https://api2.bigoven.com/recipe/167511/photos?api_key=#{ENV["app_key"]}", headers:{ "Accept" => "application/json" }).body["Results"]
# 			if !bigoven_images.nil?
# 				bigoven_images.each do |bigo_image|
# 			Image.create(
# 				bigo_image_id: bigo_image["ImageID"],
# 				photo_url: bigo_image["PhotoUrl"],
# 				is_primary: bigo_image["IsPrimary"],
# 				caption: bigo_image["Caption"]
# 				)
# 				end
# 			end
# 			end
# 		end
# 	end
# end	

### Attempt two ###
# desc 'get recipe images'
# task :load => :environment do
# app_key = ENV["app_key"]
# Recipe.all.each do |recipe|
# 	if !recipe.source_id.nil?
# 		bigoven_images = Unirest.get("https://api2.bigoven.com/recipe/167511/photos?api_key=#{ENV["app_key"]}", headers:{ "Accept" => "application/json" }).body
# 	if !bigoven_images["Results"].nil?
# 		bigoven_images["Results"].each do |bigo_image|
# 			image = Image.create(
# 				bigo_image_id: bigo_image["ImageID"],
# 				photo_url: bigo_image["PhotoUrl"],
# 				is_primary: bigo_image["IsPrimary"],
# 				caption: bigo_image["Caption"]
# 				)
# 		end
# 	end
# end
# end
# end
# end