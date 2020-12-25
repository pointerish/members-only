Rails.application.routes.draw do
  root to: 'posts#index'
  devise_for :users
  resources :posts, only: [:new, :create, :index]
end
