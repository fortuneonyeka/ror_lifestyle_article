Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  get 'sessions/new'
  devise_for :users
  resources :categories
  # 
  # root to: 'articles#index'
  root 'categories#index'
  # get 'home/index'
  
  resources :articles
  
end
