# frozen_string_literal: true

Rails.application.routes.draw do
  root to: "places#index"
  resources :places do
    resources :photos, only: %i[create destroy]
  end
  resources :users, only: [:show]
  devise_for :users, controllers: {registrations: "users/registrations"}, path: "",
                     path_names: {sign_in: "login", registration: "registration"}
end
