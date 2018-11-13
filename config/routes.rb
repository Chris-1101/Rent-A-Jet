Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :jets do
    resources :reviews, only: [:new, :create]
    resources :bookings, only: [:new, :create]
  end
  # destroy for booking owner
  resources :booking, only: [:destroy]
end
