Rails.application.routes.draw do


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

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
