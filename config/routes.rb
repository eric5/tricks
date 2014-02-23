Tricks::Application.routes.draw do
  root to: 'home#index'

  get 'register', to: 'users#new'

  resources :users, only: [:create]
end
