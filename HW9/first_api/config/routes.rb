Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  namespace :api do
    namespace :v1 do
      resources :authors
      resources :articles
      resources :likes
      resources :comments do
        patch :change_status
      end
      resources :tags
    end
  end
end