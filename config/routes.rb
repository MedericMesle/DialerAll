Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # grinds routes
  get 'grinds', to: 'grinds#index'
  get "grinds/new", to: "grinds#new", as: :new_grind
  post "grinds", to: "grinds#create"
  get "grinds/:id", to: "grinds#show", as: :grind
end
