# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'pages#home'
  get '/pages/:page' => 'pages#show'
  resources :cars
  resources :parts
  resources :factories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
