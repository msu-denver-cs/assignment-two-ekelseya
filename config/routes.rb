# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :car_parts
  resources :cars do
    get :autocomplete_car_make, on: :collection
    collection do
      get 'search'
    end
  end
  resources :parts
  resources :factories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get '/pages/:home' => 'pages#home', :as => 'home'
  get '/search' => 'pages#search', :as => 'search_page'
end
