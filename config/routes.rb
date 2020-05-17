#
Rails.application.routes.draw do
  
  root to: 'butterrolls#main'

  resources :sessions, only: %i[new create destroy]
  
  get 'main', :to => 'butterrolls#main', as: 'main'
  get 'about', :to => 'butterrolls#about', as: 'about'
  
  get 'signup', :to => 'users#new', as: 'signup'
  get 'login', :to => 'sessions#new', as: 'login'
  post 'login', :to => 'sessions#create', as: 'verified'
  post 'logout', :controller =>'sessions', :action => 'destroy', :method => 'delete'
  resource :session
  resources :users
  post 'users', :to => 'users#create'
  resources :words
  resources :phrases
end
