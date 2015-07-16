Rails.application.routes.draw do
  resources :rafts
  resources :tsightings

  root 'static#home'
  get '/about', to: 'static#about'
  get '/new_sighting', to: 'tsightings#new'

  devise_for :users, :controllers => {:registrations => "user/registrations" }
  devise_scope :user do get '/users/index', to: 'user/registrations#index' end
  devise_scope :user do get '/users/:id', to: 'user/registrations#show' end
  	#following line still does not work - routing problem
  devise_scope :user do get '/users/sign_up', to: 'user/registrations#new' end
end
