Rails.application.routes.draw do
  devise_for :users
  root "items#index"
  #get 'users', to: 'users#index'
  resources :users, only: [:index, :new, :create, :edit, :update]
  #resources :registrations, only: [:new]
  resources :items
end
