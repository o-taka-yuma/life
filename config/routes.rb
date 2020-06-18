Rails.application.routes.draw do
  
  devise_for :users
  root "start#index"
  resources :users

  resources :action_records, only: [:index, :show, :new, :create] 
  resources :targets, only:[:new, :create]
end
