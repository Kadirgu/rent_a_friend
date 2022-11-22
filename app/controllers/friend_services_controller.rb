class FriendServicesController < ApplicationController
  def index
    @friend_services = FriendService.all
  end
  
  def create
    @friend_service = FriendService.new(friend_service_params)
  end

  def destroy
    @user = user.find(params[:id])
    @user.destroy
    flash[:success] = "The user was successfully destroyed."
    #redirect_to friends_service_path
  end

  def edit
    user = User.find_by(id: params[:id])
  if current_user == user
    user.update()
    flash[:success] = "The user was successfully updated."
  end

  def friend_service_params
    params.require(:friend_service)

  def show
    @friend_service = FriendService.find(params[:id])
  end
end
