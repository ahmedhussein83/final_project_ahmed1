
  Rails.application.routes.draw do
  resources :homes
      devise_for :users, controllers: {sessions: 'users/sessions'}
        
    root 'homes#index'
    end

