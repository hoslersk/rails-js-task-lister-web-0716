Rails.application.routes.draw do
  resources :tasks
  resources :lists
  resources :boards

  # get '/signin', to: 'sessions#new', as: 'signin'
  # delete '/signout', to: 'sessions#destroy', as: 'signout'
  # post '/sessions', to: 'sessions#create'
  #
  # get '/signup', to: 'registrations#new'
  # post '/signup', to: 'registrations#create', as: 'registration'
  #
  # get '/welcome', to: 'sessions#welcome', as: 'welcome'
  # get '/', to: 'sessions#welcome', as: 'root_url'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
