class FriendServicesController < ApplicationController
  def index
    @friend_services = FriendService.all
  end

  def show
    @friend_service = FriendService.find(params[:id])
  end

  def create
    @friend_service = FriendService.new(friend_service_params)
  end

  def destroy
    @friend_service = FriendService.find(params[:id])
    @friend_service.destroy
    flash[:success] = "The user was successfully destroyed."
    redirect_to friend_services_path
  end

  private

  def friend_service_params
    params.require(:friend_service)
  end
end
