class BusinessOffersController < ApplicationController
before_action :set_order, only: [:add_to_bag, :remove_from_bag, :increase_to_bag]
  # this method is the same as view_user_history or view_user_orders mentioned in trello
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

  def add_to_bag
     # Route to this method: /businesses/:business_id/business_offers/:id
     @order.add_item_quantity(params[:id])
     redirect_to update_total_amount_path(params[:business_id])
  end

  def remove_from_bag
     # Route to this method: /businesses/:business_id/business_offers/:id
     @order.decrease_item_quantity(params[:id])
     redirect_to update_total_amount_checkout_path(params[:business_id])
  end

  def increase_to_bag
     # Route to this method: /businesses/:business_id/business_offers/:id
     @order.add_item_quantity(params[:id])
     redirect_to update_total_amount_checkout_path(params[:business_id])
  end
end


