Rails.application.routes.draw do
  get 'default/index'
  resources :upvotes
  resources :posts
  resources :dumpsters
  resources :downvotes
  resources :comments
  resources :black_lists
  
  devise_for :users
  root to: "default#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
