class ShopsController < ApplicationController
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
      redirect_to shop_path
      flash[:success] = "success"
    else
      flash[:danger] = "fail"
      render :new, status: :unprocessable_entity 
    end
  end

  # /shops/:id => shop_path
  def show
  end

  # /shops/:id/edit => edit_shop_path
  def edit
  end

  # /shops/:id => shop_path
  def update
  end

  # /shops/:id => shop_path
  def destroy
  end

  private 

  def shop_params
    params.require(:shop).permit(:name, :address, :holiday, :closed)
  end

  def set_shop
    @shop = Shop.find(params[:id])
  end
end
