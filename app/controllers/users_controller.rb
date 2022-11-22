class UsersController < ApplicationController

  def index
    @users = Uer.all
  end

  def show
    @user = Users.new
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(list_params)

  end

  def destroy
    @user.destroy
    redirect_to lists_path, status: :see_other
  end

  private

  def set_list
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :photo)
  end
end
