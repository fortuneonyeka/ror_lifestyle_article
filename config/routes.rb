Rails.application.routes.draw do
  devise_for :users
  resources :categories
  # 
  # root to: 'articles#index'
  root 'categories#index'
  # get 'home/index'
  
  resources :articles
  
end
