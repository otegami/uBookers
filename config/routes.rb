Rails.application.routes.draw do
  # temporary create this routes => root 'users#show'
  root 'users#show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :index]
  resources :books
end
