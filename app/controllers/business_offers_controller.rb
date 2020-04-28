class BusinessOffersController < ApplicationController
  before_action :set_order, only: [:add_to_bag, :remove_from_bag, :increase_to_bag]
  # this method is the same as view_user_history or view_user_orders mentioned in trello
  before_action :set_business, only: [:new, :create]

  def index
    @business_offers = policy_scope(BusinessOffer)
  end

  def new
    b = BusinessOffer.new
    b.business_id = params[:business_id] # attr_accessor of BusinessOffer Model
    @business_offer = b
    authorize @business_offer
    # @business = Business.find(params[:business_offer_id])
    # @business_offer = BusinessOffer.where("business_offer_id = ?", @business_offer.id)
  end

  def create
    @business_offer = BusinessOffer.new(business_offer_params)
    @business_offer.business_id = params[:business_id]
    @business_offer.offer_amount = business_offer_params[:offer_amount].to_i * 100
    @business_offer.price_cents = (business_offer_params[:offer_amount].to_i * 100) * (business_offer_params[:discount].to_i / 100)

    authorize @business_offer
    if @business_offer.save
      redirect_to new_business_business_offer_path
    else
      flash.now[:error] = "Offer amount must be unique"
      render :new
    end
  end

  def show; end

  def edit
    @business_offer = BusinessOffer.find(params[:id])
    authorize @business_offer
  end

  def update
    @business_offer = BusinessOffer.find(params[:id])
    authorize @business_offer
    if @business_offer.update(business_offer_params)
      flash[:alert] = "Bravo!"
      redirect_to business_path(@business_offer.business_id)
    else
      flash[:alert] = "Can't update business offer, please try again"
      render :edit
    end
  end

  def destroy; end

  def add_to_bag
    # Route to this method: /businesses/:business_id/business_offers/:id
    authorize BusinessOffer
    @order.add_item_quantity(params[:id])
    redirect_to update_total_amount_cents_path(params[:business_id])
  end

  def remove_from_bag
    # Route to this method: /businesses/:business_id/business_offers/:id
    authorize BusinessOffer
    @order.decrease_item_quantity(params[:id])
    redirect_to update_total_amount_cents_checkout_path(params[:business_id])
  end

  def increase_to_bag
    # Route to this method: /businesses/:business_id/business_offers/:id
    authorize BusinessOffer
    @order.add_item_quantity(params[:id])
    redirect_to update_total_amount_cents_checkout_path(params[:business_id])
  end

  private

  def set_business
    @business = Business.find(params[:business_id])
  end

  def business_offer_params
    params.require(:business_offer).permit(:offer_amount, :discount)
  end
end
