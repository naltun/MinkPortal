Rails.application.routes.draw do
  resources :raft_checks

  # This should be added to bind the routing between these two associated resources. However, it doesn't
  #resources :users do
    resources :rafts
  #end
  resources :tsightings

  root 'static#home'
  get '/about', to: 'static#about'
  get '/new_sighting', to: 'tsightings#new'

  devise_for :users, :controllers => {:registrations => "user/registrations" }
  devise_scope :user do get '/users/index', to: 'user/registrations#index' end
  devise_scope :user do get '/users/:id', to: 'user/registrations#show' end
  devise_scope :user do delete '/users/:id', to: 'user/registrations#destroy' end
  devise_scope :user do get '/users/sign_up', to: 'user/registrations#new' end
end
