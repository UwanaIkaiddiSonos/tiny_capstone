Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  
  get "/products" => "products#index"
  get "/products/:id" => "products#show"

  namespace :api do
    # Products
    get "/products" => "products#index"
    get "/products/:id" => "products#show"
    post "/products" => "products#create"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"

    #Users
    post "/users" => "users#create"

    #Sessions
    post "/sessions" => "sessions#create"

    #CartedProduct
    get "carted_products" => "carted_products#index"
    post "carted_products" => "carted_products#create"

  end

end
