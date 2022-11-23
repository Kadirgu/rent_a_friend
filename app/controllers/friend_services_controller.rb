class FriendServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def new
    @friend_service = FriendService.new
  end

  def index
    @friend_services = FriendService.all
  end

  def show
    @friend_service = FriendService.find(params[:id])
    @booking = Booking.new
  end

  def create
    @friend_service = FriendService.new(friend_service_params)
    @friend_service.user = current_user
    if @friend_service.save!
      redirect_to friend_service_path(@friend_service)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @friend_service = FriendService.find(params[:id])
    @friend_service.destroy
    flash[:success] = "The user was successfully destroyed."
    redirect_to friend_services_path
  end

  private


  def friend_service_params
    params.require(:friend_service).permit(:title, :description, :first_name, :last_name, :age, :phone_number, :email, :gender, :category, :availability, :interests, :photo)
  end
end
