Rails.application.routes.draw do
  resources :catalogs
  root to: 'visitors#index'
  devise_for :users
end
