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

  resources :orders, only: [:index, :new, :create, :edit, :update, :destroy] do
    resources :order_items, only: [:new, :create, :show, :edit, :update, :destroy]
  end




  get "/businesses/:user_id/view_orders", to: "businesses#view_orders", as: "view_business_orders"
  get "/businesses/:user_id/view_hisotry", to: "businesses#view_hisotry", as: "view_business_hisotry"



  # get "/businesses/:user_id/withdraw", to: "businesses#withdraw", as: "withdraw"
  # get "/orders/:user_id/transactions", to: "orders#view_history", as: "view_user_history"
  # get "/orders/:user_id/view_all", to: "orders#view_all", as: "view_user_orders"


end
