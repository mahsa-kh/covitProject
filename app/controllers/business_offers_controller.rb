class BusinessOffersController < ApplicationController
before_action :set_order, only: [:add_to_bag]
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
     #WHEN USER CLICKS ON 'ADD TO BAG' WE GET HERE: send business_offer_id as param
     @order.add_item_quantity(params[:id])
     redirect_to update_total_amount_path(@order.id)
  end
end


