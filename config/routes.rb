Rails.application.routes.draw do

  root to: 'musicians#new'

  resources :musicians
  resources :instruments

end
