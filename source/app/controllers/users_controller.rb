class UsersController < ApplicationController

	def new
	end

	def create
	end
  def authenticate
  	@user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      session[:user] = @user.id
      redirect_to '/', flash: {notice: "Successful log in!"}
    else
      redirect_to users_login, flash: {notice: 'Invalid credentials!' }
    end
  end

  def login

  end
end