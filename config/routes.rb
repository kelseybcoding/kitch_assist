Rails.application.routes.draw do

	
	# these routes are for showing users a login form, logging them in, and logging them out.
	get '/login' => 'sessions#new'
	post '/login' => 'sessions#destroy'
	get '/logout' => 'sessions#destroy'
	# These routes will be for signup. The first renders a form in the browse, the second will 
    # receive the form and create a user in our database using the data given to us by the user.
	get '/signup' => 'members#new'
	post '/members' => 'members#create'
#-----------------------------------------------------------------
end
