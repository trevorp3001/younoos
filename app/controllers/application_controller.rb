class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
  	if session[:user_id].present?
  		User.find(session[:user_id])
  	end
  end


 
  helper_method :current_user


  def make_sure_logged_in

    if current_user.nil?
      flash[:error] = "you gotta sign up"
      redirect_to new_user_path
    end

  end



end
