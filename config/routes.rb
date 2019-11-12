Rails.application.routes.draw do
  devise_for :accounts, controllers: {registrations: 'registrations'}
  authenticated :account do
    root to: 'accounts#index', as: :dashboard
  end

  resources :accounts do
    member do
      post "follow", to: "follow#create", as: :follow
    end
  end

  get '/dashboard', to: 'accounts#index'
  get '/profile/:username', to: 'accounts#show', as: :profile

  resources :posts, only: [:new, :create, :show, :destroy] do
    resources :likes, only: [:create, :destroy], module: :posts
    resources :comments, module: :posts
  end

  root 'pages#homepage'
end
