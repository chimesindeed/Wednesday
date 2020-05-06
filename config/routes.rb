Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    resources :words
    resources :phrases

    resources :letters, only: [:show] do
      resources :words
    end

    resources :words, only: [:show] do
      resources :phrases
    end
end
