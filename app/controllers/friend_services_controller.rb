class FriendServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def new
    @friend_service = FriendService.new
  end

  def index
    if params[:query] && !params[:query].empty?
      @friend_services = FriendService.search_a_lot(params[:query])
    else
      @friend_services = FriendService.all
    end

    @markers = @friend_services.geocoded.map do |friend_service|
      {
        lat: friend_service.latitude,
        lng: friend_service.longitude,
        info_window: render_to_string(partial: "info_window", locals: {friend_service: friend_service})
      }
    end
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

  def edit
    @friend_service = FriendService.find(params[:id])
  end

  def update
    @friend_service = FriendService.find(params[:id])
    @friend_service.update(friend_service_params)
    redirect_to friend_service_path
  end

  private


  def friend_service_params
    params.require(:friend_service).permit(:title, :description, :first_name, :last_name, :age, :phone_number, :email, :gender, :category, :availability, :interests, :photo, :location, :latitude, :longitude)
  end
end
