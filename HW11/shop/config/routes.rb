Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :products
  resources :categories
  resources :orders
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'products#index'
  get '/cart', to: 'carts#show', as: :cart
  resources :line_items, only: %i[create update destroy]
  post 'line_items/:id/add_quantity', to: 'line_items#add_quantity', as: 'line_item_add'
  post 'line_items/:id/remove_quantity', to: 'line_items#remove_quantity', as: 'line_item_remove'
  resources :orders, only: %i[index create show]
  put 'orders/:id/order_pay', to: 'orders#order_pay', as: 'order_pay'
end
