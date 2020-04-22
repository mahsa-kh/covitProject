class BusinessesController < ApplicationController
  def index
  end

  def new
    @business = Business.new
    @category = Category.new
  end

  def create
    @business = Business.new(business_params)
    @business.user_id = current_user.id
    @business.category = Business.find(params[:category_id])
    # raise
    if @business.save!
      redirect_to new_business_business_offer_path(@business)
    else
      render :new
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

  def view_hisotry
  end

  def view_orders
  end

  private

  def business_params
    params.require(:business).permit(:name, :address, :instagram, :website, :photo, :description, :category_id)
  end
end
