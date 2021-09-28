Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/show'
  get 'users/edit'
  get 'users/show'
  get 'actors/index'
  get 'actors/show'
  get 'movies/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  resources :movies
  resources :actors
  resources :users
end
