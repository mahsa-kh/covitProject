class OrdersController < ApplicationController

  def index
  end

  def new
  end

  def create
  end

  def show
   @user = current_user # given by device!!
    @orders = @user.orders
    show_alert = @orders.any? do |ord|
      (Date.today + 10) > ord.exp_date
    end
     if show_alert
       flash[:alert] = "One or more orders are going to expire within 10 days" 
     end
  end


  def edit
  end

  def update
  end

  def destroy
  end

end
