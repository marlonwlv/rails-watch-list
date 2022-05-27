Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :movies
  # resources :lists

  # A user can see all the lists - OK
  # get 'lists', to: 'lists#index'

  # A user can see the details of a given list and its name
  # get 'lists/:id', to: 'lists#show'

  resources :lists, only: [:index, :show, :new, :create]

end
