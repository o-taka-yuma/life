Rails.application.routes.draw do
  
  devise_for :users
  root "start#index"
  resources :users do 
    resources :action_records, only: [:index, :new, :create] 
  end
end
