Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  root "users#index"
  #get 'users', to: 'users#index'
  resources :users, only: [:index, :new, :create, :edit, :update]
end
