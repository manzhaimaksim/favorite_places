# frozen_string_literal: true

Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    root to: "places#index"
    resources :places do
      resources :photos, only: %i[create destroy]
    end
    resources :users, only: [:show]
    devise_for :users, controllers: {registrations: "users/registrations"}, path: "",
                      path_names: {sign_in: "login", registration: "registration"}
    put "/places/:id/like", to: "places#like", as: "like"
    put "/places/:id/dislike", to: "places#dislike", as: "dislike"
    get "/users/:id/favorite", to: "users#favorite", as: "favorite"
  end
end
