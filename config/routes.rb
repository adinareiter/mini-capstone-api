Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get "/all_clothings", controller: "clothings", action: "all_clothings"

  #Clothing
  get "/clothings" => "clothings#index"
  get "/clothings/:id" => "clothings#show"
  post "/clothings" => "clothings#create"
  patch "/clothings/:id" => "clothings#update"
  delete "/clothings/:id" => "clothings#destroy"

  #Suppliers
  get "/suppliers" => "suppliers#index"
  get "/suppliers" => "suppliers#show"

  #Images
  get "/images" => "images#index"
  get "/images" => "images#show"
  post "/images" => "images#create"

  #Users
  get "/users" => "users#index"
  post "/users" => "users#create"

  #sessions
  post "/sessions" => "sessions#create"

  #carted_products
  post "/carted_products" => "carted_products#create"
  get "/carted_products" => "carted_products#index"

  #Orders
  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show"
  get "/orders" => "orders#index"
end
