#
Rails.application.routes.draw do
  
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks'}
  root to: 'butterrolls#main'

  
  get 'main', :to => 'butterrolls#main', as: 'main'
  get 'about', :to => 'butterrolls#about', as: 'about'
  
  resources :words
  resources :phrases
  resources :matches
end
