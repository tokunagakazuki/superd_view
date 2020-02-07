Rails.application.routes.draw do
  devise_for :users
  root to: 'toppage#index'
  namespace :posts do
    resources :searches, only: :index
    resources :comment, only: %i[create destroy]
  end
  
  resources :relationships, only: %i[create destroy]
  resources :maps, only: %i[index]
  get '/map_request', to: 'maps#map', as: 'map_request'
  resources :users, only: %i[show]
<<<<<<< Updated upstream
  resources :posts do
    resources :comments, only: %i[create destroy]
  end
=======
  resources :posts
>>>>>>> Stashed changes

  post   '/like/:post_id' => 'likes#like',   as: 'like'
  delete '/like/:post_id' => 'likes#unlike', as: 'unlike'
end
