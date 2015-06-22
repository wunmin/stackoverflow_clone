class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def login_show
    @user = User.new
  end

  def login
    @user = User.find_by(user_params)
    # @user will be nill or an User object
    @user = User.authenticate(params[:user][:username], params[:user][:password])
    if @user == nil
      redirect_to ("/login_show")
    else
      session[:user_id] = @user.id
      redirect_to ("/")
    end
  end

  def logout
    session.clear
    redirect_to "/"
  end

  private
  def user_params
    params.require(:user).permit(:username, :password)
  end
end
