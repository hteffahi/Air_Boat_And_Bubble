class BookingsController < ApplicationController

  def new
    @boat = Boat.find(params[:boat_id])
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:boat_id])
  end

  def create
    @user = current_user
    @boat = Boat.find(params[:boat_id])
    @booking = Booking.new(booking_params)
    @booking.boat = @boat
    @booking.user = @user
    if @booking.save
      redirect_to root_path

    else
      render :new, status: :unprocessable_entity
    end
  end



  def destroy
    @booking = Booking.new(booking_params)
    @booking.save
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
