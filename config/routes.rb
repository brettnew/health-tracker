Rails.application.routes.draw do
  root :to => 'users#index'

  resources :users

  resources :sessions

  resources :foods

  resources :exercises
end
