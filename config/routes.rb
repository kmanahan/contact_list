Rails.application.routes.draw do
  resources :rooms, only: [:index, :create, :new, :show] do 
    resources :patients, only: [:index, :new, :create] do 
    end 
  end 
end 
