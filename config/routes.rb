Rails.application.routes.draw do
  resources :paths
  root to: 'trails#index'
  resources :routes
  resources :transits
  resources :trails
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
