Rails.application.routes.draw do

	
  resources :kitchen_tools
  resources :recipes
  resources :ingredients
	root to: 'recipes#index'


  	# ingredients routes
  	get '/' => 'ingredients#index'

  	# recipe routes
  	get '/' => 'recipes#index'

  	#kitchen_tools routes
  	get '/' => 'kitchen_tools#index'
  	
	# these routes are for showing users a login form, logging them in, and logging them out.
	get '/login' => 'sessions#new'
	post '/login' => 'sessions#create'
	get '/logout' => 'sessions#destroy'
	# These routes will be for signup. The first renders a form in the browse, the second will 
    # receive the form and create a user in our database using the data given to us by the user.
	get '/members' => 'members#index'
	get '/members/:id' => 'members#show'
	get '/signup' => 'members#new'
	post '/members' => 'members#create'

#-----------------------------------------------------------------
end
