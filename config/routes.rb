Rails.application.routes.draw do

	
  resources :kitchen_tools
  resources :recipes
	root to: 'members#index'

	get '/home' => 'members#index'
	get '/members/:id' => 'members#show'

	get '/recipes' => 'recipes#index'
	get '/recipes/new' => 'recipes#new'
	post '/recipes' => 'recipes#create'
	get '/recipes/:id' => 'recipes#show'
	get '/recipes/:id/edit' => 'recipes#edit'
	patch '/recipes/:id' => 'recipes#update'
	delete '/recipes/:id' => 'recipes#destroy'

	patch '/required_ingredients/:id' => 'required_ingredients#update'


  	# ingredients routes
  	# get '/recipe_ingredients' => 'recipe_ingredients#index'

  	# recipe routes
  	# get '/' => 'recipes#index'

  	#kitchen_tools routes
  	# get '/' => 'kitchen_tools#index'
  	
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
