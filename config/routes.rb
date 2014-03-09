Tricks::Application.routes.draw do
  root to: 'home#index'

  get 'register', to: 'users#new'
  get 'sign_in', to: 'sessions#new'
  get 'sign_out', to: 'sessions#destroy'

  resources :users, only: [:create]
  resources :sessions, only: [:create]
end
