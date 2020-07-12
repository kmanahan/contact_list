Rails.application.routes.draw do
  resources :rooms, only: [:index, :create, :new] do 
    resources :patients, only: [:index, :new, :show] 
  end
  resources :patients, only: :create

  get '/patients/discharged', to: 'patients#discharged'
  get '/patients/expired', to: 'patients#expired'
end