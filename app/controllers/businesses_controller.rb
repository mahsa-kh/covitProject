class BusinessesController < ApplicationController
  before_action :set_business, only: [:show, :edit, :update, :destroy]
  def index
    @bussinesses_index_pundit = policy_scope(Business)
    if params[:query].present?
            sql_query = " \
        businesses.name ILIKE :query \
        OR businesses.description ILIKE :query \
        OR businesses.address ILIKE :query \
        OR categories.category_name ILIKE :query \
      "
      @businesses = @bussinesses_index_pundit.joins(:category).where(sql_query, query: "%#{params[:query]}%")
    elsif params[:category].present?
      @category = Category.find_by(category_name: params[:category])
      @businesses = @category ? @bussinesses_index_pundit.where(category: @category) : @bussinesses_index_pundit
    else
      @businesses = @bussinesses_index_pundit
    end

    @user = current_user # given by DEVICE!!
    if !@user.orders.nil?
      @orders = @user.orders
      show_alert = @orders.any? do |ord|
        (Date.today + 10) > ord.exp_date if ord.exp_date
      end
       if show_alert
         flash[:alert] = "One or more orders are going to expire within 10 days"
       end
    end
  end



  def order_history_businesses
    authorize Business
    @orders = Order.where(user: current_user) # It is the same ---> @orders = current_user.orders
    @businesses = []
    @orders.each do |order|
      order.order_items.each do |order_item|
        business = order_item.business_offer.business #  OrderItems belongs_to :business_offer  & BusinessOffers belongs_to :business,
        @businesses << business unless @businesses.include?(business)
      end
    end
  end


  def new
    @business = Business.new
    authorize @business
  end

  def create
    # @category = Category.find(params[:id])
    @business = Business.new(business_params)
    @business.user_id = current_user.id
    authorize @business
    # @business.category_id = params[:category_id]
    if @business.save!
      redirect_to new_business_business_offer_path(@business)
    else
      render :new
    end
  end

  def show
    # @business = Business.find(params[:id]) # set_business in private already does this job
    @businesses = Business.all
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

  def view_history
  end

  def view_orders
    @order = Order.all
  end

  private

  def business_params
    params.require(:business).permit(:name, :address, :instagram, :website, :photo, :description, :category_id, :employee_no)
  end

  def set_business
    @business = Business.find(params[:id])
    authorize @business
  end
end
