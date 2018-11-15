Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'pages#home'

  resources :jets do
    resources :reviews, only: [:new, :create]
    resources :bookings, only: [:new, :create, :show]
  end
  # destroy for booking owner
  resources :booking, only: [:destroy]
  resources :users, only: [:show]
end
