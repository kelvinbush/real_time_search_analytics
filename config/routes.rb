Rails.application.routes.draw do
  devise_for :users
  resources :articles
  resources :search, only: [:index]
  root "articles#index"
end
