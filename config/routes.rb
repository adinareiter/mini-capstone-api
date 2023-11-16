Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get "/all_clothings", controller: "clothings", action: "all_clothings"
  get "/clothings" => "clothings#index"

  get "/clothings/:id" => "clothings#show"

  post "/clothings" => "clothings#create"
  patch "/clothings/:id" => "clothings#update"
  delete "/clothings/:id" => "clothings#destroy"

  get "/suppliers" => "suppliers#index"
  get "/suppliers" => "suppliers#show"

  get "/images" => "images#index"
  get "/images" => "images#show"
  post "/images" => "images#create"

  get "/users" => "users#index"
  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  post "/orders" => "orders#create"
  get "/orders/:id" => "orders#show"
  get "/orders" => "orders#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
