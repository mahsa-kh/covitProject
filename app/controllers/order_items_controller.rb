class OrderItemsController < ApplicationController
   before_action :set_order, only: [:create, :destroy]

  def index
  end

  def new
  end

  def create



  def create

  end
    # if current_user.order.last.paid
    #   @order = Order.create(paid: false, user_id: current_user.id)
    # else
    #   @order = current_user.orders.last
    # end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  #  def business_offer_params
  #   params.require(:business_offer).permit(:offer_amount, :discount)
  # end
end
