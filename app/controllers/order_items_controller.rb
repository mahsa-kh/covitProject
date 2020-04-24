class OrderItemsController < ApplicationController
   before_action :set_order, only: [:create, :destroy]

  def index
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    OrderItem.find(params[:id]).destroy
    redirect_to order_path(params[:order_id]), notice: "Item is deleted!"
  end

  #  def business_offer_params
  #   params.require(:business_offer).permit(:offer_amount, :discount)
  # end
end
