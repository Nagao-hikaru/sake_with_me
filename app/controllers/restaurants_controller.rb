class RestaurantsController < ApplicationController

  before_action :authenticate_user!, only: [:new, :edit, :update, :destory]
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  before_action :forbit_restaurant, only: [:edit, :update, :destroy]


  def index
    @restaurants = Restaurant.includes(:user).order("created_at DESC")
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

  def show
  end

  def edit
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path(@restaurant.id), notice: '編集に成功しました。'
    else
      flash[:alert] = "全項目記述してください"
      render :new
    end
  end

  def destroy
    if @restaurant.destroy
      redirect_to root_path, notice: '削除に成功しました。'
    else
      render :edit
    end
  end


  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :image, :beer, :genre_id, :prefecture_id, :city, :address).merge(user_id: current_user.id)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def forbit_restaurant
    @restaurant = Restaurant.find(params[:id])
    if current_user != @restaurant.user.id
      redirect_to restaurant_path(@restaurant.id), notice: '投稿者のみ編集,削除できます。'
    end
  end
end
