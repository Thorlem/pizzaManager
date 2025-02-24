Rails.application.routes.draw do
  resources :pizzas
  resources :toppings
  root "home#index"
  get "up" => "rails/health#show", as: :rails_health_check
end
