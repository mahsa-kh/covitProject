class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_cart
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!, except: :home

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
    @order = Order.find(session[:order_id])
    rescue ActiveRecord::RecordNotFound
    @order = Order.create
    session[:order_id] = @order.id
  end

end
