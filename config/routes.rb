Rails.application.routes.draw do
  get 'about/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :pledges
  resources :campaigns
  root to: 'home#index'
end
