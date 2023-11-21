class BoatsController < ApplicationController

  def home
    @boats = Boat.all
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    if @boat.save
      redirect_to boat_path(@boat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @boat = Boat.find(param[:id])
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :category, :price, :capacity)
  end
end
