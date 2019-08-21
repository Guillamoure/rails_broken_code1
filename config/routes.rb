Rails.application.routes.draw do
  resources :customers, only: [:index, :show, :new, :create]
  resources :meals, only: [:index, :show, :new, :create]
  resources :customer_meals, only: [:index, :show, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
