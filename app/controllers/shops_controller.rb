class ShopsController < ApplicationController
  skip_before_action :require_login, only: %i[index show]
  before_action :set_shop, only: %i[show edit update destroy]

  # /shops => shops_path
  def index
    @shops = Shop.all
  end

  # /shops/new => new_shop_path
  def new
    @shop = Shop.new
  end

  # /shops => shops_path
  def create
    @shop = Shop.new(shop_params)
    if @shop.save
      redirect_to shop_path(@shop)
      flash[:success] = "success"
    else
      flash[:danger] = "fail"
      render :new, status: :unprocessable_entity
    end
  end

  # /shops/:id => shop_path(:id)
  def show
    @record = Record.new
    @records = @shop.records.includes(:user).order(created_at: :desc)
  end

  # /shops/:id/edit => edit_shop_path
  def edit
  end

  # /shops/:id => shop_path(:id)
  def update
    if @shop.update(shop_params)
      redirect_to shop_path(params[:id])
      flash[:success] = "success"
    else
      flash[:danger] = "fail"
      render :edit, status: :unprocessable_entity
    end
  end

  # /shops/:id => shop_path
  def destroy
    @shop.destroy!
    redirect_to shops_path, status: :see_other 
    flash[:success] = "success"
  end

  private 

  def shop_params
    params.require(:shop).permit(:name, :address, :holiday, :closed)
  end

  def set_shop
    @shop = Shop.find(params[:id])
  end
end
