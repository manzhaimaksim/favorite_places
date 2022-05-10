Rails.application.routes.draw do
  root to: 'places#index'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users, only: [:show]
end
