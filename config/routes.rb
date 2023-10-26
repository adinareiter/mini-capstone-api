Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # get "/all_clothings", controller: "clothings", action: "all_clothings"
  get "/clothings" => "clothings#index"

  #  get "one_item/:id" => "clothing#one_item"
  get "/clothings/:id" => "clothings#show"

  post "/clothings" => "clothings#create"
  patch "/clothings/:id" => "clothings#update"
  delete "/clothings/:id" => "clothings#destroy"
  # get "/blue_sweater", controller: "clothings", action: "blue_sweater"
  # get "/slippers", controller: "clothings", action: "slippers"

  # Defines the root path route ("/")
  # root "articles#index"
end
