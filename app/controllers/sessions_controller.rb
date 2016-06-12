class SessionsController < ApplicationController

	def new
		
	end

	def create
		member = Member.find_by_username(params[:username])
		if member && member.authenticate(params[:password])
			session[:member_id] = member.id
			redirect_to "/members/#{member.id}"
			#'/members/:id'
		else
			redirect_to '/login'
		end
	end

	def destroy
		session[:member_id] = nil
		redirect_to '/login'
	end
end
