class LikesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_like

  def create
    user = current_user
    restaurant = Restaurant.find(params[:restaurant_id])
    like = Like.create(user_id: user.id, restaurant_id: restaurant.id)
  end

  def destroy
    user = current_user
    restaurant = Restaurant.find(params[:restaurant_id])
    like = Like.find_by(user_id: user.id, restaurant_id: restaurant.id)
    like.delete
  end

  private

  def set_like
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
