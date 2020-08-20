class SakesController < ApplicationController

  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]

  def index
    @sakes = Sake.includes(:user).order("created_at DESC")
  end

  def new
    @sake = Sake.new
  end

  def create
    @sake = Sake.new(sake_params)
    if @sake.save
      redirect_to root_path, notice: '投稿に成功しました'
    else
      binding.pry
      flash[:alert] = '全項目記述してください'
      render :new
    end
  end

  private

  def sake_params
    binding.pry
    params.require(:sake).permit(:name, :image, :rice_rate, :sake_degree, :type_id, :degree, :company, :rice).merge(user_id: current_user.id)
  end
end
