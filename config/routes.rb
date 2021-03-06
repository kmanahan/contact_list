Rails.application.routes.draw do
  root 'sessions#home'
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  resources :users

  resources :rooms, only: [:index, :create, :new] do 
    resources :patients, only: [:index, :new, :show] 
  end
  resources :patients, only: [:create, :show]
  resources :doctors, only: [:index, :show]

  get '/patient/expired', to: 'patients#expired'

  get '/nurses/most', to: 'nurses#most'
  resources :nurses, only: [:index, :show]
  
  get '/auth/:provider/callback', to: 'sessions#gitcreate'
  
end 
