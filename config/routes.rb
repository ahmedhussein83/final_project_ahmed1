Rails.application.routes.draw do
  get 'contact', to: 'messages#new', as: 'contact'
  post 'contact', to: 'messages#create'
  resources :books
  resources :hotels
  resources :homes
  devise_for :users, controllers: {sessions: 'users/sessions'}
  root 'hotels#index'
end

