require 'sidekiq/web'

Rails.application.routes.draw do
  resources :users, except: [:new, :create]

  resources :activities, only: [:index, :show]

  resources :tweets, only: [:index, :show]

  mount Sidekiq::Web => '/sidekiq'
end
