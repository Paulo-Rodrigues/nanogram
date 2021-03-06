Rails.application.routes.draw do
  devise_for :accounts, controllers: {registrations: 'registrations'}
  authenticated :account do
    root to: 'accounts#index', as: :dashboard
  end

  resources :accounts do
    member do
      post "follow", to: "follow#create", as: :follow
      delete "unfollow", to: "follow#destroy", as: :unfollow
    end
  end

  resources :follow, only: [:index]

  get '/dashboard', to: 'accounts#index'
  get '/profile/:username', to: 'accounts#show', as: :profile

  resources :posts, only: [:new, :create, :show, :destroy] do
    resources :likes, only: [:create, :destroy], module: :posts
    resources :comments, module: :posts
  end

  resources :comments do
    resources :likes, only: [:create, :destroy], module: :comments
  end

  root 'pages#homepage'
end
