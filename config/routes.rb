Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'contact', to: 'messages#new', as: 'contact'
  post 'contact', to: 'messages#create'
  resources :books
  resources :hotels
  resources :homes
  devise_for :users, controllers: {sessions: 'users/sessions'}
  root 'hotels#index'
end

