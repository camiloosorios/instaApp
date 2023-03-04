Rails.application.routes.draw do
  devise_for :users
  get '/', to: 'home#index'
  get '/profile', to: 'home#profile'
  
  
end
