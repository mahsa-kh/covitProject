class OrdersController < ApplicationController
before_action :set_order, only: [:update_total_amount]

  def index
  end

  def new
  end

  def create
  end

  def show
    @order = Order.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def update_total_amount
      @order_items = OrderItem.where("order_id = ?", @order.id)
      updated_total_amount = 0
     @order_items.each do |order_item|
      business_offer = BusinessOffer.find(order_item.business_offer_id)
      #This needs to be total of dicscounted amount:
      updated_total_amount += business_offer.offer_amount
     end
     @order.update(total_amount: updated_total_amount, order_date: Date.now)
raise
      redirect_to business_path(params[:business_id]), notice: "Your order is added to the bag"
  end


end

