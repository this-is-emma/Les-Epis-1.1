Rails.application.routes.draw do
  get 'pledges/index'
  get 'pledges/show'
  get 'pledges/new'
  get 'pledges/create'
  get 'pledges/edit'
  get 'pledges/update'
  get 'pledges/destroy'
  get 'campaigns/index'
  get 'campaigns/show'
  get 'campaigns/new'
  get 'campaigns/create'
  get 'campaigns/edit'
  get 'campaigns/update'
  get 'campaigns/destroy'
  devise_for :users, controllers: {
    registrations: "users/registrations",
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "home#index"
end
