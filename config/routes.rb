Store::Application.routes.draw do

  match '/login',  :to => 'pages#login'
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  root :to => 'products#index'
  resources :products
end
