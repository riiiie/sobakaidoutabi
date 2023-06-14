class RecordsController < ApplicationController
  skip_before_action :require_login, only: %i[show]
  before_action :set_record, only: %i[show edit update destroy]

  # /shops/:shop_id/records => new_shop_record_path(@shop)
  def new
    @shop = Shop.find(params[:shop_id])
    @record = Record.new
  end

  # /shops/:shop_id/records/:id/ => shop_records_path(@shop, @record)
  def create
    @record = Record.new(record_params)
    if @record.save
      redirect_to shop_path(@shop)
      flash[:success] = "success"
    else
      flash.now[:danger] = "fail"
      render :new, status: :unprocessable_entity
    end
  end

  # /shops/:shop_id/records/:id/ => shop_record_path(@shop, @record)
  def show
  end

  # /shops/:shop_id/records/:id/edit => edit_shop_record_path(@shop, @record)
  def edit
  end

  # /shops/:shop_id/records/:id/ => shop_record_path(@shop, @record)
  def update
    if @record.update(record_params)
      redirect_to shop_record_path(params[id], params[:id])
      flash[:success] = "success"
    else
      flash[:danger] = "fail"
      render :edit, status: :unprocessable_entity
    end
  end

  # /shops/:shop_id/records/:id/ => shop_record_path(@shop, @record)
  def destory
    @record.destroy!
    redirect_to shop_path(params[id]), status: :see_other 
    flash[:success] = "success"
  end

  private

  def record_params
    params.require(:record).permit(:visit_date, :kind_of_menu, :menu_name, :soba_texture, :soba_smell, :soba_aldente, :soup_saltiness, :soup_taste, :memo)
  end

  def set_record
    @shop = Shop.find(params[:shop_id])
    @record = @shop.records.find(params[:id])
  end
end
