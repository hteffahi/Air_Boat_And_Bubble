class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end
  def show
    @boats = current_user.boats
  end
end
