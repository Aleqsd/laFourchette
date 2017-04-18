Rails.application.routes.draw do
  resources :restaurants, only: [:show, :new, :create] do
    resources :comments, only: [:create]
  devise_for :users
  resources :restaurants, only: [:show, :new, :create]
  mount Attachinary::Engine => "/attachinary"

  # la liste des restaurants sera la page d'accueil :
  root to: "restaurants#index"
end
