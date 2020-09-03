Rails.application.routes.draw do
  devise_for :users
  root "items#index"
  get 'items/search'
  get 'items/search2'
  resources :users, only: [:index, :new, :create, :edit, :update]
  resources :items do
        resources :item_purchase, only: [:index, :create]
  end
end