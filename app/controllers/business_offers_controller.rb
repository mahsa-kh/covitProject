class BusinessOffersController < ApplicationController
  before_action :set_business, only: [:new, :create, :edit] 
  
  def index
    @business_offer = BusinessOffer.all
  end

  def new
    @business_offer = BusinessOffer.new
    # @business = Business.find(params[:business_offer_id])
    # @business_offer = BusinessOffer.where("business_offer_id = ?", @business_offer.id)
  end

  def create
    @business_offer = BusinessOffer.new(business_offer_params)
    @business_offer.business_id = params[:business_id]
        if @business_offer.save
          redirect_to new_business_business_offer_path
        else
          redirect_to root
        end
  end



  def show

  end


  def edit
     @business_offer = BusinessOffer.find(params[:id])
  end

  def update
    @business_offer = BusinessOffer.find(params[:id])
      if @business_offer.update(business_offer_params)
        flash[:alert] = "Bravo!"
        redirect_to business_path(@business_offer.business_id)
      else
        flash[:alert] = "Can't update business offer, please try again"
        render :edit
      end
  end


  def destroy
  end
end


private


  def set_business
    @business = Business.find(params[:business_id])
  end

  def business_offer_params
    params.require(:business_offer).permit(:offer_amount, :discount)
  end

