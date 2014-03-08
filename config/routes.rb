Tricks::Application.routes.draw do
  root to: 'home#index'

  get 'register', to: 'users#new'
  get 'sign_in', to: 'sessions#new'

  resources :users, only: [:create]
end
