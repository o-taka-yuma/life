Rails.application.routes.draw do
  
  devise_for :users
  root "start#index"
  resources :main, only:[:index]


  
end
