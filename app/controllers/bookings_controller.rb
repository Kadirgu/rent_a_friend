class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_booking, only: [ :show ]
  #before_action :set_friend_service, only: [ :new, :create ]

  def index
    @bookings = Booking.where(user_id: current_user.id)
  end

  def show
    authorize @booking
  end

  def new
    @booking = Booking.new
    @friend_service = FriendService.find(params[:friend_service_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.friend_service = FriendService.find(params[:friend_service_id])
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params[:booking].permit(:status, :start_date, :end_date, :user, :friend_service, :price)
  end
end
