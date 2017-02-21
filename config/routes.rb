Rails.application.routes.draw do
  root to: 'routes#index'
  resources :routes
  resources :transits
  resources :trails
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
