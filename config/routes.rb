Rails.application.routes.draw do
  devise_for :users
  root to: 'posts#index'
  resources :posts, only: [:new, :create, :show, :edit]
  resources :users, only: [:edit, :update]
  resources :groups, only: [:new, :create]
end
