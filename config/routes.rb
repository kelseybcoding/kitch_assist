Rails.application.routes.draw do


	resources :ingredients	
	resources :recipes
	root to: 'members#index'

	get '/home' => 'members#index'
	get '/members/:id' => 'members#show'
	get '/members/:id/edit' => 'members#edit'


#**********Create RequiredIngredient Route**********


  	# post '/required_ingredients' => 'required_ingredients#create'


#**********Pantry Item Routes**********

	get '/pantry_items' => 'pantry_items#index'
	get '/pantry_items/new' => 'pantry_items#new'
  	post '/pantry_items' => 'pantry_items#create'
  	get '/pantry_items/:id' => 'pantry_items#show'
  	get '/pantry_items/:id/edit' => 'pantry_items#edit'
  	patch '/pantry_items/:id' => 'pantry_items#update'
  	delete '/pantry_items/:id' => 'pantry_items#destroy'

  	
# these routes are for showing users a login form, logging them in, and logging them out.
	get '/login' => 'sessions#new'
	post '/login' => 'sessions#create'
	get '/logout' => 'sessions#destroy'

# These routes will be for signup. The first renders a form in the browse, the second will 
# receive the form and create a user in our database using the data given to us by the user.
# get '/members' => 'members#index'
	get '/signup' => 'members#new'
	post '/members' => 'members#create'

#--
  	
namespace :api do
	namespace :v1 do
		
		get '/ingredients' => 'ingredients#index'
		get '/ingredients/search' => 'ingredients#search'

		get '/pantry_items' => 'pantry_items#index'
		get '/pantry_items/new' => 'pantry_items#new'
		post '/pantry_items' => 'pantry_items#create'
		get '/pantry_items/:id' => 'pantry_items#show'
		get '/pantry_items/:id/edit' => 'pantry_items#edit'
		patch '/pantry_items/:id' => 'pantry_items#update'
  		delete '/pantry_items/:id' => 'pantry_items#destroy'

  		
  		get '/recipes' => 'recipes#index'
  		get '/recipes/search' => 'recipes#search'
  		
	end
end
end
