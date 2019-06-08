Rails.application.routes.draw do


  devise_for :models
  get 'default/index'
  devise_for :users
  resources :upvotes
  resources :profiles
  resources :dumpsters
  resources :downvotes
  resources :comments
  resources :black_lists






  root to: "default#home"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
