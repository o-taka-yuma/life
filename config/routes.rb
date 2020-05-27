Rails.application.routes.draw do
  
root "start#index"
resources :main, only:[:index]
end
