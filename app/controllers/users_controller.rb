class UsersController < ApplicationController

	

	def new 
		@user = User.new
	end


	def create
		user = User.create(user_params)
		@user_path = user_path(user)
		session[:current_user_email] = user_params[:email]
		session[:current_user_username] = user_params[:username]
		redirect_to @user_path
	end

	def show
		@user = User.find(params[:id])

	end
	
	def edit
		@user = User.find(params[:id])
	end

	def update
		
	      redirect_to root_path
 
  	end

	private

	def user_params
		params.require(:user).permit(:username, :email, :password)
	end
end
