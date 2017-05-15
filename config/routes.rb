
  Rails.application.routes.draw do
  resources :books
  resources :hotels
  resources :homes
      devise_for :users, controllers: {sessions: 'users/sessions'}
        
    root 'hotels#index'
    end

