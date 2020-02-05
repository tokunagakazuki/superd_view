Rails.application.routes.draw do
  devise_for :users
  root to: 'toppage#index'
  namespace :posts do
    resources :searches, only: :index
  end
  resources :relationships, only: [:create, :destroy]
  resources :maps, only: [:index]
  get '/map_request', to: 'maps#map', as: 'map_request'
  resources :users, only: [:show]
  resources :posts
end
