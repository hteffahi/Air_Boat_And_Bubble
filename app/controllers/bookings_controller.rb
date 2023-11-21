class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.save
  end

  private

  def booking_params
    params.require(:booking).permit(:user, :boat, :start_date, :end_date)
  end


  def show
    ###
  end

  def index
    ####
  end
end
