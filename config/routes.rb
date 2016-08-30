Rails.application.routes.draw do
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]

  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users
  resources :authors
  resources :books
  
  root 'homes#index'
  
end
