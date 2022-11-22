class FriendServicesController < ApplicationController
  def new
    @friend_service = FriendService.new
  end

  def index
    @friend_services = FriendService.all
  end

  def create
    @friend_service = FriendService.new(friend_service_params)
  end

  def friend_service_params
    params.require(:friend_service)
  end
end
