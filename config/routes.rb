Tricks::Application.routes.draw do
  root to: 'home#index'

  get 'register', to: 'users#new'
end
