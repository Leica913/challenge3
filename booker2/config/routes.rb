Rails.application.routes.draw do
  get 'users/show'
  get '/home/about' => 'homes#about'

  root 'homes#top'

  devise_for :users

  resources :users, only: [:index, :show, :edit, :update]
  resources :books, only: [:create, :index, :show, :destroy, :edit, :update]
end
