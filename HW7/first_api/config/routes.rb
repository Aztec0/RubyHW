Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :authors
      resources :articles do
        get :published
        get :unpublished
      end
      resources :likes
      resources :comments do
        patch :change_status
      end
      resources :tags
    end
  end
end
