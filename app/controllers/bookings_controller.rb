class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_booking, only: [ :show ]
  before_action :set_boat, only: [ :new, :create ]

  def index
    @bookings = current_user.bookings
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.friend_service = friend_service.find(params[:friend_service_id])
    if @booking.save
      redirect_to booking_path(@booking)
    else
      redirect_to friend_services_path(@friend_service)
    end
  end

  def destroy
    @booking.destroy
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_friend_service
    @friend_service = FriendService.find(params[:friend_service_id])
  end

  def booking_params
    params[:booking]
  end
end
