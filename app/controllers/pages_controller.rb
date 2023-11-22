class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @boats = Boat.all
  end
  def show
    @boats = current_user.boats
    @bookings = current_user.requested_bookings
  end
end
