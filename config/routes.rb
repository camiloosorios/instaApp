Rails.application.routes.draw do
  get 'post/create'
  devise_for :users

  get '/', to: 'home#index'
  get '/profile', to: 'home#profile'
  get '/new', to: 'home#new'
  
  
end
