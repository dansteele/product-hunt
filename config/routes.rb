Rails.application.routes.draw do

  devise_for :constituents
  root to: "welcome#index"

end