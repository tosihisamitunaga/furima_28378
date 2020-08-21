Rails.application.routes.draw do
  devise_for :users
  root "items#index"
  
  resources :users, only: [:index, :new, :create, :edit, :update]
  resources :items do
        resources :item_purchase, only: [:index, :create]
  end
end