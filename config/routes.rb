Rails.application.routes.draw do
  resources :rooms, only: [:index, :create, :new, :show] do 
  end 
end 
