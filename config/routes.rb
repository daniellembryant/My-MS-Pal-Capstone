Rails.application.routes.draw do
  post "/users" => "users#create"
  get "/users/:id" => "users#show"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"

  post "/sessions" => "sessions#create"

  get "/groups" => "groups#index"
  post "/groups" => "groups#create"
  get "/groups/:id" => "groups#show"
  patch "/groups/:id" => "groups#update"
  delete "/groups/:id" => "groups#destroy"

  post "/user_groups" => "user_groups#create"
  delete "/user_groups/:id" => "user_groups#destroy"

  post "/messages" => "messages#create"
  delete "/messages/:id" => "messages#destroy"

  #Third party apis
  get "/articles" => "articles#index"
  get "/quotes" => "quotes#index"
end
