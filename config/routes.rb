Rails.application.routes.draw do
  devise_for :users
  root to: 'grinds#home'

  # grinds routes
  get 'grinds', to: 'grinds#home'
  get "grinds/new", to: "grinds#new", as: :new_grind
  post "grinds", to: "grinds#create"
  get "grinds/:id", to: "grinds#show", as: :grind
  delete "grinds/:id", to: "grinds#destroy"
end
