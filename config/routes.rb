Rails.application.routes.draw do
  devise_for :users
  resources :categories
  get '/unvotearticle/:id', to: 'articles#unvote_for_article', as: :unvotearticle
  get '/votearticle/:id', to: 'articles#vote_for_article', as: :votearticle
  root 'categories#index'

  resources :articles
end
