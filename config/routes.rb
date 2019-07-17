Rails.application.routes.draw do
  get "/products" => "products#index"
  get "/products/new" => "products#new"
  post "/products" => "products#create"
  get "/products/:id" => "products#show"
  get "/products/:id/edit" => "products#edit"
  patch "/products/:id" => "products#update"

  namespace :api do
    post "/users" => "users#create"
    post "sessions" => "sessions#create"

    get "/categories" => "categories#index"
    get "/categories" => "categories#show"

    get "/orders" => "orders#index"
    post "/orders" => "orders#create"
    get "/orders" => "orders#show"

    get "/products" => "products#index"
    post "/products" => "products#create"
    get "/products/:id" => "products#show"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"

    get "/cart" => "carted_products#index"
    post "/cart" => "carted_products#create"
  end
end
