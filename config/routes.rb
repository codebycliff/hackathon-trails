Rails.application.routes.draw do
  root to: 'trails#index'
  resources :routes
  resources :transits
  resources :trails do
    resources :paths
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
