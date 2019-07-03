Rails.application.routes.draw do
  resources :profiles
  resources :places
  resources :black_lists
  resources :downvotes
  resources :upvotes
  resources :dumpsters
  resources :searches
  root to: "home#show"

  root 'home#show'
  resources :home
  resources :posts do
    resources :comments
  end
  
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
