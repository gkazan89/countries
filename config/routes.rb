Rails.application.routes.draw do
  get "/countries" => "countries#index"
  get "/countries/new" => "countries#new"
  post "/countries" => "countries#create"
  get "/countries/:id" => "countries#show"
  get "/countries/:id/edit" => "countries#edit"
  patch "/countries/:id" => "countries#update"
  delete "/countries/:id" => "countries#destroy"

  namespace :api do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get "/countries" => "countries#index"
    post "/countries" => "countries#create"
    patch "/countries/:id" => "countries#update"
    delete "/countries/:id" => "countries#destroy"

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
  end
end
