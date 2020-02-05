Rails.application.routes.draw do
  devise_for :users
  root to: 'toppage#index'
  namespace :posts do
    resources :searches, only: :index
  end
  resources :relationships, only: %i[create destroy]
  resources :maps, only: %i[index]
  get '/map_request', to: 'maps#map', as: 'map_request'
  resources :users, only: %i[show]
  resources :posts do
    resources :likes, only: [:create, :destroy]
  end

  post   '/like/:post_id' => 'likes#like',   as: 'like'
  delete '/like/:post_id' => 'likes#unlike', as: 'unlike'
end
