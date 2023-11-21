class BookingsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @user = current_user
    @booking = Booking.new(booking_params)
    @booking_id = @user
    @booking.save
  end
    private

  def booking_params
    params.require(:booking).permit(:user_id, :boat_id, :start_date, :end_date)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
