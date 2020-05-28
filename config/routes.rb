#
Rails.application.routes.draw do
  
  get 'users/show'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks'}
  root to: 'butterrolls#main'

  
  get 'main', :to => 'butterrolls#main', as: 'main'
  get 'about', :to => 'butterrolls#about', as: 'about'
  get 'match/note', :to => 'matches#new_note', as: 'new_note'
  
  resources :words
  resources :phrases
  resources :matches

  resources :users, only: [ :show ] do
    resources :words, only: [:index, :new]
    end
    
end
