class BusinessesController < ApplicationController
  def index
    if params[:category].present?
      @category = Category.find_by(category_name: params[:category])
      @businesses = @category ? Business.where(category: @category) : Business.all
    else
      @businesses = Business.all
    end
 end

  def new
    @business = Business.new
  end

  def create
    # @category = Category.find(params[:id])
    @business = Business.new(business_params)
    @business.user_id = current_user.id
    # @business.category_id = params[:category_id]
    if @business.save!
      redirect_to new_business_business_offer_path(@business)
    else
      render :new
    end
  end

  def show
  end

  def edit
    @business = Business.find(params[:id])
  end

  def update
    @business = Business.find(params[:id])
    @business.update(business_params)

    redirect_to business_path(@business)
  end

  def destroy
  end

  def view_hisotry
  end

  def view_orders
    @order = Order.all
  end

  private

  def business_params
    params.require(:business).permit(:name, :address, :instagram, :website, :photo, :description, :category_id)
  end

end
