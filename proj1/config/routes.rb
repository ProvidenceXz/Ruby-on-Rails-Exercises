Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  resources :pokemons, :except => [:edit, :update, :show, :destroy]
  patch 'pokemons/:id', to: 'pokemons#capture', as: 'capture'
  get 'pokemons/:id', to: 'pokemons#damage', as: 'damage'
end
