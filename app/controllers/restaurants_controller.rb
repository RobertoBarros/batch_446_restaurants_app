class RestaurantsController < ApplicationController
  # FILTER (Execute set_restaurant method)
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  # READ ALL (GET) /restaurants
  def index
    @restaurants = Restaurant.all
  end

  # READ ONE (GET) /restaurants/:id
  def show
  end

  # CREATE (GET) /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # CREATE (POST) /restaurants
  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  # EDIT (GET) /restaurants/:id/edit
  def edit
  end

  # EDIT (PATCH) /restaurants/:id
  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  # DESTROY (DELETE) /restaurants/:id
  def destroy
    @restaurant.destroy
    redirect_to @restaurants_path
  end

  private

  # STRONG PARAMS
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end

  # BEFORE ACTION FILTER
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
