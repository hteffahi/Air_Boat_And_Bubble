class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @user = current_user
    @booking = Booking.new(booking_params)
    @booking_id = @user
    @booking.save
  end



  def destroy
    @booking = Booking.new(booking_params)
    @booking.save
  end

  private

  def booking_params
    params.require(:booking).permit(:user, :boat, :start_date, :end_date)
  end
end
