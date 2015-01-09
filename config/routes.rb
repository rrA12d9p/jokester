Rails.application.routes.draw do
 
  resources :users do 
    resources :jokes, except: [:show]
    resources :jokes, only: [:show], param: :user_joke_id, as: 'joke'
    resources :followers, only: [:create, :destroy, :index]
  end

  get '/jokes/', to: 'jokes#index', as: 'all_jokes'
  root 'jokes#index'

 end
