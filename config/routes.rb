Rails.application.routes.draw do
  devise_for :accounts

  get '/dashboard', to: 'accounts#index'
  get '/profile', to: 'accounts#show', as: :profile

  resources :posts, only: [:new, :create, :show, :destroy]

  root 'pages#homepage'
end
