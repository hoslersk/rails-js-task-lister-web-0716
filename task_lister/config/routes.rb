Rails.application.routes.draw do
  resources :tasks
  resources :lists
  resources :boards
  get 'boards/new'

  get 'boards/create'

  get 'boards/show'

  get 'boards/index'

  get 'boards/edit'

  get 'boards/update'

  get 'boards/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
