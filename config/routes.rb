Rails.application.routes.draw do
  devise_for :users
  resources :categories
  # get 'categories/new'
  # post 'categories/create'
  # get 'categories/update'
  # get 'categories/destroy'
  root to: 'categories#index'
  # get 'home/index'
  # root to: "home#index"
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
