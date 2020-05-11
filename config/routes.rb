Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'sessions#new'
  resources :sessions, only: %i[new create destroy]
  get 'signup', :to => 'users#new', as: 'signup'
  get 'login', :to => 'sessions#new', as: 'login'
  get 'logout', :to => 'sessions#destroy', as: 'logout'
  resources :users
  post 'users', :to => 'users#create'
  resources :words
  resources :letters, only: [:show] do
    resources :words
  end
end
