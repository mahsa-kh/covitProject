class OrdersController < ApplicationController
before_action :set_order, only: [:total_calculator, :update_total_amount, :update_total_amount_checkout, :update]
before_action :total_calculator, only: [:update_total_amount, :update_total_amount_checkout]

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
    @order.update(gift: true)
    @order.update(order_params)
  end

  def destroy
  end

  def update_total_amount
      redirect_to business_path(params[:business_id]), notice: "Your order is added to the bag"
  end

    def update_total_amount_checkout
      redirect_to order_path(@order.id), notice: "Shopping bag is updated!"
  end

private

def total_calculator
  @order_items = OrderItem.where("order_id = ?", @order.id)
  updated_total_amount = 0
  @order_items.each do |order_item|
      business_offer = BusinessOffer.find(order_item.business_offer_id)
      #This needs to be total of dicscounted amount:
      updated_total_amount += business_offer.offer_amount * order_item.quantity
  end
  @order.update(total_amount: updated_total_amount, order_date: Date.new)
  cookies[:total_amount] = updated_total_amount
end


 def order_params
    params.require(:order).permit(:gift_email, :gift_message)
  end

end

