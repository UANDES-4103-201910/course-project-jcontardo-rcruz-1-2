Rails.application.routes.draw do


  devise_for :users
  resources :upvotes
  resources :profiles
  resources :dumpsters
  resources :downvotes
  resources :comments
  resources :black_lists
  resources :users
  resource :profile
  resource :black_list
  resource :downvote
  resource :upvote
  resource :dumpster
  resource :post
  resource :comment
  resource :user
  
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/users/sign_in')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]
  root to: "home#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
