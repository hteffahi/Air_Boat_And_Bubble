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
    redirect_to dashboard_path, status: :see_other
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

  def edit
    @boat = Boat.find(params[:id])
  end

  def update
    @boat = Boat.find(params[:id])
    @boat.update(boat_params)
    redirect_to boat_path(@boat)
  end

  def show
    @boat = Boat.find(params[:id])
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :category, :price, :capacity)
  end
