Rails.application.routes.draw do
  root to: 'places#index'
  resources :places
  resources :users, only: [:show]
  devise_for :users, controllers: { registrations: 'users/registrations' }, path: '', path_names: { sign_in: 'login', registration: 'registration' }
end
