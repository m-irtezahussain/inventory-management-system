Rails.application.routes.draw do

  get "up" => "rails/health#show", as: :rails_health_check
  get "/",  to: "home#index"
  get "/contact-us", to: "home#contact_us" 

  get "login", to: "admin#login"
  post "login", to: "admin#create_session"
  delete '/logout', to: 'admin#destroy_session', as: :logout

  get "admin/request", to: "admin#request22"

  get "admin/new", to: "admin#new"
  post "admin/new", to: "admin#create"

  get "dashboard", to: "dashboard#index"
  # post "dashboard", to: "dashboard#create"

  post "add_product", to: "product#add_product"
  delete 'products/:id', to: "product#destroy", as: "delete_product" 
  
end
