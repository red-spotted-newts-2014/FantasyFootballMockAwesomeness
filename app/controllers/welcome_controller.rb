class WelcomeController < ApplicationController

  def index

  end

  def login

  end

  def authenticate
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      session[:user] = @user.id
      redirect_to '/', flash: {notice: "Successful log in!"}
    else
      redirect_to '/', flash: {notice: 'Invalid credentials!'}
    end
  end

  def signup

  end

  def create_user
  	@user = User.new(user_params(params))
    if @user.save
      session[:user] = @user.id
      redirect_to '/', flash: {notice: 'Successful log in!'}
    else
      redirect_to '/', flash: {notice: 'Failed'}
    end
  end

  def questionnaire
    Draft.create(number_of_rounds: params[:draft][:number_of_rounds], number_of_players: params[:draft][:number_of_players])
    redirect_to '/'
  end

  def sign_out
    session.clear
    redirect_to '/'
  end

private

  def user_params(params)
    # { :user => { :password => ..., :email => ... } }
    params.require(:user).permit(:email, :password)
  end


end