Rails.application.routes.draw do
 
  resources :users do 
    resources :jokes
    resources :followers, only: [:create, :destroy, :index]
  end

  get '/jokes/', to: 'jokes#index', as: 'all_jokes'
  root 'jokes#index'

 end
