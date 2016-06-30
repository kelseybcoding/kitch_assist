class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

#++++++++++++ bcrypt code *********************
  def current_member
      @current_member ||= Member.find(session[:member_id]) if session[:member_id]
  end
  helper_method :current_member

  def authorize
    redirect_to '/login' unless current_member
  end
end

#**************************************
