# frozen_string_literal: true

Rails.application.routes.draw do
  resources :car_parts
  resources :cars
  resources :parts
  resources :factories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get '/pages/:page' => 'pages#show'
  get '/search' => 'pages#search', :as => 'search_page'
end
