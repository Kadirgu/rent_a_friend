class FriendServicesController < ApplicationController
  def index
    @friend_services = FriendService.all
  end
end


