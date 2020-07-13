Rails.application.routes.draw do
  root 'sessions#home'
  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'
  resources :users

  resources :rooms, only: [:index, :create, :new] do 
    resources :patients, only: [:index, :new] 
  end
  resources :patients, only: [:create, :show]
  resources :doctors, only: [:index, :show]

  get '/doctors/surgeon', to: 'doctors#surgeon'

 
end 
