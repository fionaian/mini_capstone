Rails.application.routes.draw do
  namespace :api do
    get "/products" => "products#index"
    post "/products" => "products#create"
    get "/products/:id" => "products#show"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"

    # get "/first_product_url" => "products#first_product_method"
    # get "/second_product_url" => "products#second_product_method"
    # get "/third_product_url" => "products#third_product_method"
    # get "/fourth_product_url" => "products#fourth_product_method"

    # get "/one_product_url" => "products#one_product_method"
    # get "/one_product_url/:id" => "products#one_product_method"
  end
end
