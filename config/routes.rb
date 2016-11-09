Rails.application.routes.draw do

  root to: 'welcome#show'

  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  post "/sessions", to: "sessions#create"
  get "/about-us", to: "welcome#index"

  resources :musicians
  resources :instruments
  resources :bands
  resources :band_instrument_musicians

end
