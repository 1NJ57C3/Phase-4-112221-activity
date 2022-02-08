Rails.application.routes.draw do
  resources :reviews, only: [:index, :show]
  resources :users, only: [:index, :show, :create]
  resources :games, only: [:index, :show]
end
