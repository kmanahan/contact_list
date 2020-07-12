Rails.application.routes.draw do
  resources :rooms, only: [:index, :create, :new] do 
    resources :patients, only: [:index, :new] 
  end
  resources :patients, only: [:create, :show]

  
end 
