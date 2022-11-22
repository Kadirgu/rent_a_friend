class FriendServicesController < ApplicationController

  def new
    @friend_service = FriendService.new
  end

  def index
    @friend_services = FriendService.all
  end

  def create
    @friend_service = FriendService.new(friend_service_params)
    @friend_service.user = current_user
    if @friend_service.save
      redirect_to friend_service_path(@friend_service)
    else
      render :new
    end
  end

  private

  def set_friend_service
    @friend_service = FriendService.find(params[:id])
  end

  def friend_service_params
    params.require(:friend_service)
  end
end
