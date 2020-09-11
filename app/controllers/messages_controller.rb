class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_like

  def create
    @message = @restaurant.messages.new(message_params)
    ActionCable.server.broadcast 'message_channel', content: @message if @message.save
  end

  private

  def message_params
    params.require(:message).permit(:text, :restaurant_id).merge(user_id: current_user.id)
  end

  def set_like
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
