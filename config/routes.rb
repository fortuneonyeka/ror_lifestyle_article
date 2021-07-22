# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :categories
  # get '/votearticle/:id', to: 'articles#vote_for_article', as: :votearticle
  get '/unvotearticle/:id', to: 'articles#unvote_for_article', as: :unvotearticle
  get '/votearticle/:id', to: 'articles#vote_for_article', as: :votearticle
  # root to: 'articles#index'
  root 'categories#index'
  # get 'home/index'

  resources :articles
end
