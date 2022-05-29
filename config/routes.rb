Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :movies
  # resources :lists

  # A user can see all the lists - OK
  # get 'lists', to: 'lists#index'

  # A user can see the details of a given list and its name
  # get 'lists/:id', to: 'lists#show'

  # A user can add a new bookmark (movie/list pair) to an existing list
  # Checkout simple_form docs about f.association to easily create a select dropdown for our list of movies.

  resources :bookmarks, only: [:destroy]
  resources :lists, only: [:new, :create]
  resources :lists, only: [:index, :show] do
    resources :bookmarks, only: [:new, :create]
  end



end
