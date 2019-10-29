Rails.application.routes.draw do
  devise_for :accounts

  get '/dashboard', to: 'accounts#index'

  resources :posts, only: [:new, :create, :show, :destroy]

  root 'pages#homepage'
end
