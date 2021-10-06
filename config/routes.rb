
Rails.application.routes.draw do

  get 'upload/index'
  devise_for :users do
    get "/users/sign_out" => "devise/sessions#destroy", :as => :destroy_user_session
  end
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :movies
  resources :actors
  resources :users
  get "/filmmaker-dashboard", to: "pages#dashboard"

end
