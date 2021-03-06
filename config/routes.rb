Rails.application.routes.draw do
  get 'sessions/new'

  root 'items#index'
  resources :items, only: [:index, :show]

  resources :categories, only: [:show]
  resources :cart_items, only: [:create, :index, :update, :destroy]
  resources :users

  namespace :user do
    resources :orders, only: [:index, :show, :create]
  end
  # resources :orders, only: [:create]

  # resource  :checkout,   only: [:create, :update]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  post 'cart_items/increase', to: 'cart_items#increase'
  post 'cart_items/decrease', to: 'cart_items#decrease'

  post "items", to: 'admin/items#create'
  patch "items/:id", to: 'admin/items#update'
  post "admin/items/:id/edit"    => "admin/items#edit"

  namespace :admin do
    get '/', to: 'dashboard#index'
    resources :items, except: [:destroy]
    resources :categories
    resources :item_categories
    resources :orders
  end

  get "cart_item/confirmation", to: "cart_items#confirmation"
  get "order/show", to: "orders#show"

  get "admin/order", to: "admin/orders#show"
  get "admin/orders/status", to: "admin/orders#status"
  post "admin/order/update", to: "admin/orders#update"

  # get "admin/orders/by-status", to: "admin/orders#by-status"

end
