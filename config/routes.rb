Rails.application.routes.draw do

  root to: 'sessions#new'

  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  post "/sessions", to: "sessions#create"

  resources :musicians
  resources :instruments

end
