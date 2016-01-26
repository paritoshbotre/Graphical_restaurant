class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      flash[:notice] = 'Restaurant created successfully !'
      redirect_to restaurants_path
    else
      render 'new'
    end
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :cuisine, :location)
  end
end
