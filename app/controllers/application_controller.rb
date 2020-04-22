class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!, except: :home
  # before_action :set_order

  protected

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email, :password])
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit({ owner: [] }, :first_name, :last_name, :email, :password, :password_confirmation)
    end

    devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])

  end



  private

  def set_order
    if current_user.orders.nil? || current_user.orders.last.nil? || current_user.orders.last.paid
      @order = Order.create(paid: false, user_id: current_user.id, owner_paid: false, gift: false)
      @order.update(confirmation_no: "CH#{@order.id}Ke120")
      cookies.delete(:order_id)
      cookies[:order_id] = @order.id
    else
      @order = current_user.orders.last
      cookies.delete(:order_id)
      cookies[:order_id] = @order.id
    end
  end



end
