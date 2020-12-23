Rails.application.routes.draw do
  root to: 'posts#index'
  get 'posts/new'
  get 'posts/create'
  post 'posts/create'
  get 'posts/index'
  get 'users/sign_out'
  get 'posts/show'
  devise_for :users
  resources :posts
end
