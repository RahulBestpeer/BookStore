Rails.application.routes.draw do
  root "customers#login"


  post "/customers/customerLogin", to:"customers#customerLogin" 
  resources :customers
end
