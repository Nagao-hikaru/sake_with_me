class RestaurantsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destory]
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy, :google]
  before_action :forbit_restaurant, only: [:edit, :update, :destroy]
  before_action :set_restaurant_column, only: [:index]

  def index
    @user = current_user.id if user_signed_in?
    @search = Restaurant.ransack(params[:q])
    @results = @search.result.includes(:user).order('created_at DESC')
    set_restaurant_column
    if @results.blank?
      @results = Restaurant.includes(:user).order('created_at DESC')
      flash[:alert] = '検索候補は見当たりませんでした。'
    end
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to add_sake_restaurant_path(@restaurant.id), notice: '続いて日本酒を追加してください。'
    else
      flash[:alert] = '全項目記述してください'
      render :new
    end
    @message = Message.new(text: params[:message][:text])
  end

  def show
    @like = Like.new
    @messages = Message.includes(:user)
    @message = Message.new
  end

  def edit
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path(@restaurant.id), notice: '編集に成功しました。'
    else
      flash[:alert] = '全項目記述してください'
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

  def google
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :beer, :genre_id, :prefecture_id, :address, images: []).merge(user_id: current_user.id)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def forbit_restaurant
    @restaurant = Restaurant.find(params[:id])
    redirect_to restaurant_path(@restaurant.id), notice: '投稿者のみ編集,削除できます。' if current_user != @restaurant.user
  end

  def set_restaurant_column
    @restaurant_beer = Restaurant.select('beer').distinct
  end
end
