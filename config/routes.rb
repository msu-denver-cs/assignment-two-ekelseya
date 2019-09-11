Rails.application.routes.draw do
  resources :cars
  resources :parts
  resources :factories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
