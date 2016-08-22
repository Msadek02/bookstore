Rails.application.routes.draw do

  resources :authors
  resources :books
  
  root 'homes#index'

end
