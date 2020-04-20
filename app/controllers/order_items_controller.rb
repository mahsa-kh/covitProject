class OrderItemsController < ApplicationController
  def index
  end

  def new
  end

  def create
    if current_user.orders.last.paid
      @order = Order.create(paid: false, user_id: current_user.id)
    else
      @order = current_user.orders.last
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
