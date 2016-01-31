class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
    @restaurant.assets.build
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

  def edit
  end

  def update
    if @restaurant.update_attributes(restaurant_params)
      redirect_to restaurants_path
    else
      render 'edit'
    end
  end
  
  def photo
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :cuisine, :location, assets_attributes: [:avatar])
  end
end
