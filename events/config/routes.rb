Rails.application.routes.draw do

  root 'tasks#index'

  resources :tasks

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
end
