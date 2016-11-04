Rails.application.routes.draw do

  root to: 'welcome#show'

  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  post "/sessions", to: "sessions#create"

  resources :musicians
  resources :instruments
  resources :bands

end
