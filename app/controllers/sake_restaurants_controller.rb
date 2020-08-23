class SakeRestaurantsController < ApplicationController
  before_action :authenticate_user!

  def new
    @sake_restaurant = SakeRestaurant.new
  end

  def create
    @sake_restaurant = SakeRestaurant.new(sake_restaurant_params)
    if @sake_restaurant.save
      redirect_to root_path, notice: '投稿に成功しました'
    else
      flash[:alert] = '項目を記入してください'
      render :new
    end
  end

  def add
    @restaurant = Restaurant.find(params[:id])
    @sake_restaurant = SakeRestaurant.new
  end

  def add_create
    @restaurant = Restaurant.find(params[:id])
    @sake_restaurant = @restaurant.sake_restaurants.new(sake_restaurant_params)
    if @sake_restaurant.save
      redirect_to root_path, notice: '投稿に成功しました。'
    else
      render :add
    end
  end

  private

  def sake_restaurant_params
    params.require(:sake_restaurant).permit(:sake_id, :restaurant_id).merge(user_id: current_user.id)
  end

end
