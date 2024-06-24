Rails.application.routes.draw do
  root "customers#index"


  post "/customers/customerLogin", to:"customers#customerLogin" 
  get "/customers/customers_details", to:"customers#customer_details" 
  get "/customers/login", to:"customers#login" 

  resources :customers


  
  get "/admins/login", to:"admins#login" 
  post "/admins/adminLogin", to:"admins#adminLogin" 
  resources :admins
end
