Rails.application.routes.draw do
 
  resources :users do 
    resources :jokes 
    resources :followers, only: [:create, :destroy, :index]

  end
 end
