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
			
# desc 'get recipe images'
# 	task :load => :environment do
# 		app_key = ENV["app_key"]
# 		Recipe.all.each do |image|
# 			if !recipe.source_id.nil?
# 				bigoven_image = Unirest.get("https://api2.bigoven.com/recipe/#{recipe.source_id}/photos?api_key=#{ENV["app_key"]}", headers:{ "Accept" => "application/json" }).body["Results"]
# 			image.create(
# 				bigo_image_id: images["ImageID"],
# 				photo_url: images["PhotoUrl"],
# 				is_primary: images["IsPrimary"],
# 				caption: images["Caption"]
# 				)
# 				end
# 			end
# 		end
# 	end	