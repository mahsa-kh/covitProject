class BusinessesController < ApplicationController
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

  def view_hisotry
  end

  def view_orders
    @order = Order.all
  end
end
