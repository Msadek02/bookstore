Rails.application.routes.draw do

  resources :authors
  resources :books

  post "/books/new"

  root 'homes#index'

end
