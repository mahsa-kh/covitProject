class StripeCheckoutSessionService
  def call(event)
    order = Order.find_by(checkout_session_id: event.data.object.id)
    order.update(state: 'paid')
    order.update(paid: true)
    order.update(exp_date: order.order_date+30)
    cookies.delete(:order_id)
  end
end
