namespace :images do
	desc 'get recipe images'
	task :load => :environment do
	app_key = ENV["app_key"]
		

Unirest.get("https://api2.bigoven.com/recipe/#{recipe.source_id}/photos?api_key=#{ENV["app_key"]}", headers:{ "Accept" => "application/json" }).body["Results"]

				
t.integer  "recipe_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "caption"
    t.boolean  "is_primary"
    t.string   "photo_url"
    t.integer  "bigo_image_id"