Rails.application.routes.draw do
  devise_for :users
  root "items#index"
  get "/items", to: "items#new"
  post "/items", to: "items#create"
  resources :users, only: [:index, :new, :create, :edit, :update]
  resources :items, only: [:index, :new, :create]
end
