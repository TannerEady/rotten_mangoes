RottenMangoes::Application.routes.draw do

  resources :movies do
    resources :reviews, only: [:new, :create]
  end
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  root to: 'movies#index'

  get "reviews/new"
  get "reviews/create"
  get "sessions/new"
  get "sessions/create"
  get "users/new"
  get "users/create"

  get "movies/index"
  get "movies/show"
  get "movies/new"
  get "movies/edit"

end
