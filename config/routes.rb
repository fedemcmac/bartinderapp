Rails.application.routes.draw do
  resources :users
  resources :cocktails
  # resources :cocktail_ingredients

  resources :types, only: [:index]
  resources :ingredients, only: [:show]
  resources :comments
  resources :likes


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome', to: 'application#welcome'
  get '/login', to: 'sessions#new', as: :login
  post '/login' => 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: :logout
end
