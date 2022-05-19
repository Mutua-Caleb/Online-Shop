Rails.application.routes.draw do
  devise_for :users
  resources :line_items
  resources :carts
  resources :instruments
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
