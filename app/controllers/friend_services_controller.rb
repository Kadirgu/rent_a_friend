class FriendServicesController < ApplicationController
  def index
    @friend_services = FriendService.all
  end

  def show
    @friend_service = FriendService.find(params[:id])
  end
end
