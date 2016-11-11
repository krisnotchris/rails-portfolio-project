Rails.application.routes.draw do
  resources :recipes
  resources :ingredients
  root to: 'users#index'
  devise_for :users
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
