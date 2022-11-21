class BookingsController < ApplicationController
  before_action :set_bookmarks

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.list = @list
  end

  def destroy
    @booking.destroy
    redirect_to list_path(@booking.list)
  end

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
