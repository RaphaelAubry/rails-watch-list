Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'movies/home'
  get 'movies', to: 'movies#index', as: :movies
  get 'movies/:id', to: 'movies#show', as: :movie
  get 'lists/home'
  get 'lists', to: 'lists#index'
  get 'lists/new', to: 'lists#new'
  post 'lists', to: 'lists#create'
  get 'lists/:id', to: 'lists#show', as: :list
  get 'bookmarks/home'
  get 'lists/:list_id/bookmarks/new', to: 'bookmarks#new', as: :new_list_bookmark
  post 'lists/:list_id/bookmarks', to: 'bookmarks#create', as: :list_bookmarks
  resources :bookmarks, only: [ :destroy ]
end
