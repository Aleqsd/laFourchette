Rails.application.routes.draw do
  devise_for :users
  resources :restaurants, only: [:show, :new, :create]

  # la liste des restaurants sera la page d'accueil :
  root to: "restaurants#index"
end
