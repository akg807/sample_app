Rails.application.routes.draw do
  # Root
  root "static_pages#home"

  # Static pages
  get "/help",    to: "static_pages#help"
  get "/about",   to: "static_pages#about"
  get "/contact", to: "static_pages#contact"

  # Signup
  get "/signup", to: "users#new"

  # Users + follow system
  resources :users do
    member do
      get :following
      get :followers
    end
  end

  # Sessions (sign in / sign out)
  get    "/signin",  to: "sessions#new"
  delete "/signout", to: "sessions#destroy"
  resources :sessions, only: [:new, :create, :destroy]

  # Microposts
  resources :microposts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]

  # Health check
  get "up" => "rails/health#show", as: :rails_health_check
end
