Rails.application.routes.draw do
  devise_for :accounts, controllers: {registrations: 'registrations'}
  authenticated :account do
    root to: 'accounts#index', as: :dashboard
  end

  get '/dashboard', to: 'accounts#index'
  get '/profile/:username', to: 'accounts#show', as: :profile

  resources :posts, only: [:new, :create, :show, :destroy] do
    resources :comments, module: :posts
  end

  root 'pages#homepage'
end
