Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # grinds routes
  get 'grinds', to: 'grinds#index'
end
