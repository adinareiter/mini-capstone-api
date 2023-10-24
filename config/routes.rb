Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/all_clothings", controller: "clothings", action: "all_clothings"
  get "/blue_sweater", controller: "clothings", action: "blue_sweater"
  get "/slippers", controller: "clothings", action: "slippers"
  # Defines the root path route ("/")
  # root "articles#index"
end
