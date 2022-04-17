Rails.application.routes.draw do
  devise_for :users
  root to: 'grinds#index'

  # grinds routes
  get 'grinds', to: 'grinds#index'
  get "grinds/new", to: "grinds#new", as: :new_grind
  post "grinds", to: "grinds#create"
  get "grinds/:id", to: "grinds#show", as: :grind
  delete "grinds/:id", to: "grinds#destroy"
end
