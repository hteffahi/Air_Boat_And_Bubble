class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @boats = Boat.all
  end
  def show
    @boats = current_user.boats
    @bookings = User.find(9).requested_bookings
  end
end
