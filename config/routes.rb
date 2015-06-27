Rails.application.routes.draw do
  devise_for :users
  resources :tsightings
  resources :test_sightings

  root 'static#home'
  
  get '/about', to: 'static#about'
  get '/new_sighting', to: 'tsightings#new'

end
