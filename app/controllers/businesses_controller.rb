class BusinessesController < ApplicationController
  before_action :set_business, only: [:show, :edit, :update, :destroy]
  def index
  end

  def new
  end

  def create
  end

  def show
    if current_user.orders.last.paid
      @order = Order.create(paid: false, user_id: current_user.id)
    else
      @order = current_user.orders.last
    end
      @order_item = OrderItem.new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def view_hisotry
  end

  def view_orders
  end


  def set_business
    @business = Business.find(params[:id])
  end

  def sbusiness_params
    params.require(:business).permit(:name, :address, :website, :instagram, :description, :category_id)
  end

end
