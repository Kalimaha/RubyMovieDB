Rails.application.routes.draw do

  # Routes
  get 'welcome/index'

  # Resources
  resources :movies

  # You can have the root of your site routed with "root"
  root 'movies#index'

end
