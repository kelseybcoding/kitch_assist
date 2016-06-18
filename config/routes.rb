Rails.application.routes.draw do

	resources :ingredients	
	resources :recipes
	root to: 'members#index'

	get '/home' => 'members#index'
	get '/members/:id' => 'members#show'

#**********Recipes Routes**********

	get '/recipes' => 'recipes#index'
	get '/recipes/new' => 'recipes#new'
	post '/recipes' => 'recipes#create'
	get '/recipes/:id' => 'recipes#show'
	get '/recipes/:id/edit' => 'recipes#edit'
	patch '/recipes/:id' => 'recipes#update'
	delete '/recipes/:id' => 'recipes#destroy'


#**********Create RequiredIngredient Route**********

  	post '/required_ingredients' => 'required_ingredients#create'


#**********Ingredients Routes**********
  	get '/ingredients' => 'ingredients#index'
	get '/ingredients/new' => 'ingredients#new'
	post '/ingredients' => 'ingredients#create'
	get '/ingredients/:id' => 'ingredients#show'
	get '/ingredients/:id/edit' => 'ingredients#edit'
	patch '/ingredients/:id' => 'ingredients#update'
	delete '/ingredients/:id' => 'ingredients#destroy'

  	
# these routes are for showing users a login form, logging them in, and logging them out.
	get '/login' => 'sessions#new'
	post '/login' => 'sessions#create'
	get '/logout' => 'sessions#destroy'
# These routes will be for signup. The first renders a form in the browse, the second will 
# receive the form and create a user in our database using the data given to us by the user.
# get '/members' => 'members#index'
	get '/signup' => 'members#new'
	post '/members' => 'members#create'

#-----------------------------------------------------------------
end
