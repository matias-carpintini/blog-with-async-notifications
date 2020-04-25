require 'sidekiq/web'
Rails.application.routes.draw do
  root "posts#index"
  devise_for :users
  resources :posts

  resources :notifications, only: [:index, :update]

  mount Sidekiq::Web => '/sidekiq'
  mount ActionCable.server => '/cable'
end
