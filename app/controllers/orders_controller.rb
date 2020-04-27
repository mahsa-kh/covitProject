class OrdersController < ApplicationController
  before_action :set_order, only: [:total_calculator, :update_total_amount_cents, :update_total_amount_cents_checkout, :update]
  before_action :total_calculator, only: [:update_total_amount_cents, :update_total_amount_cents_checkout]

  def index
    # @bussinesses_index_pundit = policy_scope(Business)
    @orders_index_pundit = policy_scope(Order)
    if current_user.owner
      business = Business.where("user_id = ?", current_user.id).last
      @order_items = business.order_items
      @orders = []
      @order_items.each do |order_item|
        if params[:query].present?
          sql_query = "confirmation_no ILIKE :query OR CAST(total_amount_cents AS TEXT) ILIKE :query OR CAST(order_date AS TEXT) ILIKE :query OR CAST(exp_date AS TEXT) ILIKE :query OR state ILIKE :query AND id = #{order_item.order_id}"
          all_orders = @orders_index_pundit.where(sql_query, query: "%#{params[:query]}%")
          all_orders.each do |order|
            @orders.push(order)
          end
        else
          order = @orders_index_pundit.find(order_item.order_id)
          @orders.push(order)
        end
      end
    else
      # @orders = Order.where("user_id = ?", current_user.id)
      if params[:query].present?
        sql_query = "confirmation_no ILIKE :query OR CAST(total_amount_cents AS TEXT)  ILIKE :query OR CAST(exp_date AS TEXT) ILIKE :query OR CAST(order_date AS TEXT) ILIKE :query OR state ILIKE :query AND user_id = #{current_user.id}"
        @orders = @orders_index_pundit.where(sql_query, query: "%#{params[:query]}%")
      else
        @orders = @orders_index_pundit.where("user_id = ?", current_user.id)
      end
    end
  end

  def new
    @order = Order.new
    authorize @order
  end

  def create
    authorize @order
  end

  def show
   # @user = current_user # given by device!!
   #  @orders = @user.orders
   #  show_alert = @orders.any? do |ord|
   #    (Date.today + 10) > ord.exp_date
   #  end
   #   if show_alert
   #     flash[:alert] = "One or more orders are going to expire within 10 days"
   #   end
    @order = Order.find(params[:id])
    authorize @order
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
    authorize @order
    redirect_to business_path(params[:business_id]), notice: "Your order is added to the bag"
  end

  def update_total_amount_cents_checkout
    authorize @order
    redirect_to order_path(@order.id), notice: "Shopping bag is updated!"
  end

  private

  def total_calculator
    @order_items = OrderItem.where("order_id = ?", @order.id)
    updated_total_amount_cents = 0
    @order_items.each do |order_item|
      business_offer = BusinessOffer.find(order_item.business_offer_id)
      # This needs to be total of dicscounted amount:
      updated_total_amount_cents += business_offer.price * order_item.quantity * 100
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
