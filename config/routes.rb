Rails.application.routes.draw do

  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users
  resources :authors
  resources :books
  
  root 'homes#index'
  get '/search', to: 'homes#search'

end
