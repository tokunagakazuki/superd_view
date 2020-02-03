Rails.application.routes.draw do
  devise_for :users
  root to: 'toppage#index'
  resources :maps, only: [:index]
  get '/map_request', to: 'maps#map', as: 'map_request'
  resources :users, only: [:show]
  resources :posts
end
