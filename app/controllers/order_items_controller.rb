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
    quantity = @order_item.quantity
    price = @order_item.business_offer.price_cents
    current_item_amount = quantity * price
    order = Order.find(@order_item.order_id)
    updated_amount = order.total_amount_cents - price
    @order_item.destroy
    order.update(total_amount_cents: updated_amount)

    redirect_to order_path(params[:order_id]), notice: "Item is deleted!"
  end

  #  def business_offer_params
  #   params.require(:business_offer).permit(:offer_amount, :discount)
  # end
end
