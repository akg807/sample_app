Rails.application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :microposts, only: [:create, :destroy]
  # Root
  root "static_pages#home"

  # Static pages
  get "/help",    to: "static_pages#help"
  get "/about",   to: "static_pages#about"
  get "/contact", to: "static_pages#contact"

  # Users
  get "/signup", to: "users#new"   # Friendly signup URL

  # Sessions (sign in / sign out)
  get    "/signin",  to: "sessions#new"     # Show login form
  post   "/sessions", to: "sessions#create" # Submit login form
  delete "/signout", to: "sessions#destroy" # Log out

  # Health check
  get "up" => "rails/health#show", as: :rails_health_check
end
