Rails.application.routes.draw do
  resources :black_lists
  resources :downvotes
  resources :upvotes
  resources :dumpsters
  root to: "home#show"

  root 'home#show'
  resources :home
  resources :posts do
    resources :comments
  end

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
