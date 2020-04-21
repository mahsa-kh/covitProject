Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'

  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :businesses, only: [:index]



  # devise_for :users, path: 'users', controllers: {
  #   sessions: "users/sessions"
  # }

  resources :businesses, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :business_offers, only: [:new, :create, :show, :edit, :update, :destroy]
  end

  resources :orders, only: [:index, :new, :create, :edit, :update, :destroy, :show] do
    resources :order_items, only: [:new, :create, :show, :edit, :update, :destroy]
  end




  get "/businesses/:user_id/view_orders", to: "businesses#view_orders", as: "view_business_orders"
  get "/businesses/:user_id/view_hisotry", to: "businesses#view_hisotry", as: "view_business_hisotry"
  post "/businesses/:business_id//business_offers/:id", to: "business_offers#add_to_bag", as: "add_offer_to_bag"
  get "/orders/:business_id/increase", to: "orders#update_total_amount", as: "update_total_amount"
  get "/orders/:business_id/decrease", to: "orders#update_total_amount_checkout", as: "update_total_amount_checkout"



  # get "/businesses/:user_id/withdraw", to: "businesses#withdraw", as: "withdraw"
  # get "/orders/:user_id/transactions", to: "orders#view_history", as: "view_user_history"
  # get "/orders/:user_id/view_all", to: "orders#view_all", as: "view_user_orders"


end
