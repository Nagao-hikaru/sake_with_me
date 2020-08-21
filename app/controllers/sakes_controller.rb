class SakesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  before_action :set_sake, only: [:show, :edit, :update, :destroy]
  before_action :forbit_sake, only: [:edit, :update, :destroy]

  def index
    @sakes = Sake.includes(:user).order('created_at DESC')
  end

  def new
    @sake = Sake.new
  end

  def create
    @sake = Sake.new(sake_params)
    if @sake.save
      redirect_to sakes_path, notice: '投稿に成功しました'
    else
      flash[:alert] = '全項目記述してください'
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @sake.update(sake_params)
      redirect_to sake_path(@sake.id), notice: '編集に成功しました。'
    else
      flash[:alert] = '全項目記述してください'
      render :new
    end
  end

  def destroy
    if @sake.destroy
      redirect_to sakes_path, notice: '削除に成功しました。'
    else
      render :edit
    end
  end

  private

  def sake_params
    params.require(:sake).permit(:name, :image, :rice_rate, :sake_degree, :type_id, :degree, :company, :rice).merge(user_id: current_user.id)
  end

  def set_sake
    @sake = Sake.find(params[:id])
  end

  def forbit_sake
    @sake = Sake.find(params[:id])
    redirect_to sake_path(@sake.id), notice: '投稿者のみ編集削除できます。' if current_user != @sake.user
  end
end
