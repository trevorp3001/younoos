class SessionsController < ApplicationController

	def destroy
		#aka log out
		reset_session
		
		redirect_to root_path
	end



	def new
		#log in form
	end

	def create
		#do in log

		#i want to find the username and password typed in
		@email = params[:session][:email]
		@password = params[:session][:password]

		#then i want to see if there is a user with that username
		@user = User.find_by_email(@email)
		#if there is , check password aswell

		if @user.present? and @user.authenticate(@password)
			#if matches, give them session
			session[:user_id] = @user.id
			
			redirect_to root_path
		else
			flash[:error] = "wrong user name or password"
			#if not, show the new page
			render "new"
			
		end
		
	end


end
