class OrdersController < ApplicationController
before_action :set_order, only: [:total_calculator, :update_total_amount_cents, :update_total_amount_cents_checkout, :update]
before_action :total_calculator, only: [:update_total_amount_cents, :update_total_amount_cents_checkout]

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

  def update_total_amount_cents
      redirect_to business_path(params[:business_id]), notice: "Your order is added to the bag"
  end

    def update_total_amount_cents_checkout
      redirect_to order_path(@order.id), notice: "Shopping bag is updated!"
  end

private

def total_calculator
  @order_items = OrderItem.where("order_id = ?", @order.id)
  updated_total_amount_cents = 0
  @order_items.each do |order_item|
      business_offer = BusinessOffer.find(order_item.business_offer_id)
      #This needs to be total of dicscounted amount:
      updated_total_amount_cents += business_offer.price * order_item.quantity
  end
  @order.update(total_amount_cents: updated_total_amount_cents, order_date: Date.new)


session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: current_user,
        amount: @order.total_amount_cents * 100,
        currency: 'eur',
        quantity: 1
      }],
      success_url: orders_url,
      cancel_url: orders_url
    )

@order.update(checkout_session_id: session.id)
end


 def order_params
    params.require(:order).permit(:gift_email, :gift_message)
  end

end

