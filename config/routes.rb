Rails.application.routes.draw do

  # Resources
  resources :movies

  # Root URL
  root 'movies#index'

end