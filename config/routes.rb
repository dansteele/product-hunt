Rails.application.routes.draw do

  devise_for :governments
  devise_for :constituents
  root to: "motion#index"

  resources :motion, only: [:show, :index]
  resources :vote, only: [:create]

end
