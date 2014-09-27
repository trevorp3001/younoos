class UsersController < ApplicationController

	def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)

  	if @user.save
  		flash[:success] = "You've signed up"

  		#we want to keep track of who we just signed up as in rails we use a thing called a session
  		#this tracks us in a browser using cookies
  		session[:user_id] = @user.id

  		redirect_to root_path
  	else
  		render "new"
  	end

  end

  private
  def user_params
  	#shortcut for whitelisting form data
  	params.require(:user).permit(:name, :email, :password, :password_confirmation, :avatar)
  end


end
