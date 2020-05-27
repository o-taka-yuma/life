Rails.application.routes.draw do
  
  devise_for :users
  root "start#index"
  resources :action_records, only: [:index]


  
end
