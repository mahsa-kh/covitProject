class OrderItemsController < ApplicationController
  before_action :set_order, only: [:create, :destroy]

  def index
  end

  def new
  end

  def create
    authorize @order_item
  end

  def show
  end

  def edit
    create
  end

  def update
    authorize @order_item
  end

  def destroy
    @order_item = OrderItem.find(params[:id])
    authorize @order_item
    @order_item.destroy
    redirect_to order_path(params[:order_id]), notice: "Item is deleted!"
  end

  #  def business_offer_params
  #   params.require(:business_offer).permit(:offer_amount, :discount)
  # end
end
