Rails.application.routes.draw do
  # Devise
  devise_for :users
  # Home Controller
  get '/', to: 'home#index'
  get '/profile', to: 'home#profile'
  # Post Controller
  resources :posts, only: [:new, :create, :show]
end
