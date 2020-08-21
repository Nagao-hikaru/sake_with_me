class SakeRestaurantsController < ApplicationController

  def new
    @sake_restaurant = SakeRestaurant.new
  end

  def create
    binding.pry
    @sake_restaurant = SakeRestaurant.new(sake_restaurant_params)
    if @sake_restaurant.save
      redirect_to root_path, notice: '投稿に成功しました'
    else
      flash[:alert] = '項目を記入してください'
      render :new
    end
  end

  private

  def sake_restaurant_params
    params.require(:sake_restaurant).permit(:sake_id, :restaurant_id).merge(user_id: current_user.id)
  end

end
