Rails.application.routes.draw do

  get "up" => "rails/health#show", as: :rails_health_check
  get "/",  to: "home#index"

  get "login", to: "admin#login"
  post "login", to: "admin#create_session"

  get "admin/new", to: "admin#new"
  post "admin/new", to: "admin#create"

  get "dashboard", to: "dashboard#index"
  post "dashboard", to: "dashboard#create"
  
end
