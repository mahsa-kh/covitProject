class BusinessesController < ApplicationController
  before_action :set_business, only: [:show, :edit, :update, :destroy]
  def index
    if params[:query].present?
            sql_query = " \
        businesses.name ILIKE :query \
        OR businesses.description ILIKE :query \
        OR businesses.address ILIKE :query \
        OR categories.category_name ILIKE :query \
      "
      @businesses = Business.joins(:category).where(sql_query, query: "%#{params[:query]}%")
    else
      @businesses = Business.all
    end
    # redirect_to root_path
  end


  def new
  end

  def create
  end

  def show
    @business = Business.find(params[:id])
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


  def set_business
    # @business = Business.find(params[:id])
  end

  def sbusiness_params
    params.require(:business).permit(:name, :address, :website, :instagram, :description, :category_id)
  end

end
