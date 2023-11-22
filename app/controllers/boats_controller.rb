class BoatsController < ApplicationController

  def home
    @boats = Boat.all
  end

  def new
    @boat = Boat.new
  end

  def destroy
    @boat = Boat.find(params[:id])
    @boat.destroy
    redirect_to boat_path(@boat.boats), status: :see_other
  end

  end

  def create
    @user = current_user
    @boat = Boat.new(boat_params)
    @boat.user = @user
    if @boat.save
      redirect_to boat_path(@boat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @boat = Boat.find(params[:id])
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :category, :price, :capacity)
  end
