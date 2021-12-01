Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :friend_requests, only: [:new, :create]
  resources :user_friends, only: [:new, :create]
  resources :profiles, only: [:show]
  resources :posts, only: [:new, :create]
  resources :likes, only: [:create, :destroy]
  resources :comments, only: [:new, :create]

  root 'users#show'
end
