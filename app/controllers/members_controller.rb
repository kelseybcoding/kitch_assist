class MembersController < ApplicationController
	
	def index
		sort_attribute = params[:sort]
		search_term = params[:search_term]

		   if sort_attribute
		     @recipes = Recipe.order(sort_attribute)
		   else
		     @recipes = Recipe.all
		   end

		   if search_term
		     @recipes = @recipes.where("title LIKE ? OR required_ingredient LIKE ? OR instructions LIKE ?", "%#{search_term}%", "%#{search_term}%", "%#{search_term}%")
		   end
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
	    params.require(:member).permit(:first_name, :last_name, :username, :email, :zipcode, :skill_level, :bio, :password, :password_confirmation)
	 end
end
