class BookingsController < ApplicationController

  def index
  @bookings = current_user.bookings
  end

  before_action :set_bookmarks

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.boat = Boat.find(params[:friend_service_id])
    if @booking.save
      redirect_to booking_path(@booking)
    else
      redirect_to friend_service_path(@friend_service)
    end
  end

  def destroy
    @booking.destroy

  private

  def booking_params
    params.require(:booking)
  end

  def set_booking
    @booking = Booking.find
  end

  def set_list
    @list = List.find(params[:list_id])
  end

end
