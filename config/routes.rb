Rails.application.routes.draw do
  root 'sushis#index'
  devise_for :users
  resources :sushis
end
