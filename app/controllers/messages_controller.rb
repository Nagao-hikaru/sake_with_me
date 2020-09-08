class MessagesController < ApplicationController

  def create
    @message = Message.new(text: params[:message][:text])
  end
end
