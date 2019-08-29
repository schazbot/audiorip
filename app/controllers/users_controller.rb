class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
      redirect_to user_path(@user.id)
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
