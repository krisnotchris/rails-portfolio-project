Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations', :omniauth_callbacks => 'users/omniauth_callbacks' }
  root 'users#index'
  resources :ingredients
  resources :recipes do
    resources :comments
    resources :recipe_ingredients, only: [:index, :create, :edit, :update]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
