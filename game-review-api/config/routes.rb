Rails.application.routes.draw do
  # resources :reviews
  resources :users, only: [:create]
  resources :games
end
