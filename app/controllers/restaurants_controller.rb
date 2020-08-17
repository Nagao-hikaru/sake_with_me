class RestaurantsController < ApplicationController

  before_action :authenticate_user!, only: [:new]


  def index
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to root_path, notice: '投稿に成功しました。'
    else
      flash[:alert] = "全項目記述してください"
      render :new
    end

  end


  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :image, :beer, :genre_id, :prefecture_id, :city, :address).merge(user_id: current_user.id)
  end
end
