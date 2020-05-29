Rails.application.routes.draw do
  
  devise_for :users
  root "start#index"
  resources :users

  resources :action_records, only: [:index, :new, :create] 
  
end
