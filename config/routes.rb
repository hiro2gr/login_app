Rails.application.routes.draw do
  get "/", to: "home#index"
  get "login_form", to: "users#login_form"
  post "login" => "users#login"
  get "login" => "users#login_form"
  get "signup" => "users#signup"
  post "/create", to: "sessions#create"
  get "/show" => "users#show"
end
