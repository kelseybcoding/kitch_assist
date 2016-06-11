class MembersController < ApplicationController
	def new
		
	end

	def create
		@member = Member.new(member_params)

		if @member.save
			session[:member_id] = @member.id
		    redirect_to :home, notice: 'Account created successfully'
		else
		    flash[:error] = 'An error occurred!'
		    render 'new'
		end
	end

private

	 def member_params
	    params.require(:member).permit(:first_name, :last_name, :username, :email, :password, :password_confirmation)
	 end
end
