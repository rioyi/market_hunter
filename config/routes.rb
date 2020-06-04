Rails.application.routes.draw do
  root 'home#index'

  resources :products
  resources :unit_measurements
  resources :product_kinds
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
