class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    # @user = User.find(params: q)
    @user = current_user
  end
end
