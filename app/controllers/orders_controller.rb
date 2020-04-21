class OrdersController < ApplicationController


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
  end

  def update_total_amount

      @order = Order.find(params[:id])
      @order_items = OrderItem.where("order_id = ?", @order.id)
      @order.update(total_amount: 0)

     for @order_items.each do |order_item|
      business_offer = BusinessOffer.find(order_item.business_offer_id)
      #This needs to be total of dicscounted amount:
      updated_total_amount += business_offer.offer_amount
     end
     @order.update(total_amount: updated_total_amount)

      redirect_to root, notice: "Your order is added to the bag"
  end


end
