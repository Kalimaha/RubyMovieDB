Rails.application.routes.draw do

  resources :directors
  # Resources
  resources :movies

  # Root URL
  root 'movies#index'

end