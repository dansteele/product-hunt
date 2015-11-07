Rails.application.routes.draw do

  devise_for :governments
  devise_for :constituents
  root to: "welcome#index"

  resources :motion, only: [:show]

end