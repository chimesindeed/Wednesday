#
Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'butterrolls#main'
  resources :sessions, only: %i[new create destroy]
  get 'main', :to => 'butterrolls#main', as: 'main'
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
