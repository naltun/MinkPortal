Rails.application.routes.draw do
  resources :tsightings
  resources :test_sightings

  root 'static#home'
  
  get '/about', to: 'static#about'
  get '/sform', to: 'static#sform'

end
