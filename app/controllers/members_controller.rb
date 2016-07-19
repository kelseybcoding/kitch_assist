class MembersController < ApplicationController
	
	def index
		# render "index", layout: false
	end

	def edit
    	@ingredients = Ingredient.all
   		@member = current_member.id

  	end

	def show
		@recipes = current_member.recipes.limit(25).uniq
	end

	def new
		
	end


#++++++++++++ bcrypt code *********************
	def create
		@member = Member.new(member_params)

		if @member.save
			session[:member_id] = @member.id
		    redirect_to "/members/#{@member.id}", notice: 'Account created successfully'
		else
		    flash[:error] = 'An error occurred!'
		    render 'new'
		end
	end

private

	 def member_params
	    params.require(:member).permit(:first_name, :last_name, :username, :email, :password_digest, :password_confirmation)
	 end
end
