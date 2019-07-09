Rails.application.routes.draw do
  resources :cocktails
  resources :cocktail_ingredients
  resources :types
  resources :ingredients
  resources :comments
  resources :likes
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
