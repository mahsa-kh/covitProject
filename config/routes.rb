Rails.application.routes.draw do


mount StripeEvent::Engine, at: '/stripe-webhooks'

  devise_for :users
  root to: 'pages#home'

  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html




  # devise_for :users, path: 'users', controllers: {
  #   sessions: "users/sessions"
  # }

  resources :businesses, only: [:index, :new, :create, :show, :edit, :update, :destroy] do
    resources :business_offers, only: [:new, :create, :show, :edit, :update, :destroy]
  end

  resources :orders, only: [:index, :new, :create, :edit, :update, :destroy, :show] do
    resources :order_items, only: [:new, :create, :show, :edit, :update, :destroy]
    resources :payments, only: [:new]
  end






  post "/businesses/:business_id/business_offers/:id/add", to: "business_offers#add_to_bag", as: "add_offer_to_bag"
  post "/businesses/:business_id/business_offers/:id/remove", to: "business_offers#remove_from_bag", as: "remove_from_bag"
  post "/businesses/:business_id/business_offers/:id/increase", to: "business_offers#increase_to_bag", as: "increase_offer_to_bag"
  get "/orders/:business_id/increase", to: "orders#update_total_amount_cents", as: "update_total_amount_cents"
  get "/orders/:business_id/decrease", to: "orders#update_total_amount_cents_checkout", as: "update_total_amount_cents_checkout"

  get "/businesses/helped", to: "businesses#order_history_businesses", as: "businesses_helped"

  # get "/businesses/:user_id/withdraw", to: "businesses#withdraw", as: "withdraw"
  # get "/orders/:user_id/transactions", to: "orders#view_history", as: "view_user_history"
  # get "/orders/:user_id/view_all", to: "orders#view_all", as: "view_user_orders"


end
