Rails.application.routes.draw do
  devise_for :users
  resources :tsightings
  resources :test_sightings

  root 'static#home'
  
  get '/about', to: 'static#about'
  get '/sform', to: 'static#sform'
  get '/signup', to: 'user#new'

end
