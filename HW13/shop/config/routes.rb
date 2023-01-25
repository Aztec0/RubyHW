# frozen_string_literal: true

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
  get '/carts', to: 'carts#show', as: :cart
  resources :line_items, only: %i[create update destroy]
  resources :orders, only: %i[index create show]
end
