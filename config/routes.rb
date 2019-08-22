Rails.application.routes.draw do
  resources :customers, only: [:index, :show, :new, :create]
  resources :meal, only: [:index, :show, :new, :create]
  resource :customer_meals, only: [:index, :show, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
