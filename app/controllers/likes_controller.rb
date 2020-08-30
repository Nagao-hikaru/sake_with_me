class LikesController < ApplicationController
  before_action :authenticate_user!


  def create
    @like = current_user.likes.create(restaurant_id: params[:restaurant_id])
  end

  def destroy
    @like = Like.find_by(restaurant_id: params[:restaurant_id], user_id: current_user.id)
    @like.destroy
    
  end


  private
  def set_like
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
