Store::Application.routes.draw do

  match '/login',  :to => 'pages#login'
  match '/account',  :to => 'pages#account'
  match '/cart',  :to => 'pages#cart'
  match '/listing',  :to => 'pages#listing'
  match '/detail',  :to => 'pages#detail'
  match '/index',  :to => 'products#index'
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  root :to => 'products#index'
  resources :products
end
