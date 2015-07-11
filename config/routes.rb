Rails.application.routes.draw do
  resources :rafts

  devise_for :users, :controllers => {:registrations => "user/registrations" }
  resources :tsightings
  #resources :test_sightings

  root 'static#home'
  
  get '/about', to: 'static#about'
  get '/new_sighting', to: 'tsightings#new'

end
