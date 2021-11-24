class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save

    redirect_to restaurant_path(@restaurant)
  end

  private

  def restaurant_params
    params.require(:review).permit(:content)
  end
end
