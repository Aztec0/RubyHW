Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :authors
      resources :articles do
        get :published
        get :unpublished
      end
      resources :comments do
        patch :change_status
      end
    end
  end
end
