Rails.application.routes.draw do
  get "/" => "users#login_form"
  post "login" => "users#login"
  get "login" => "users#login_form"
  get "signup" => "users#signup"
  post "create" => "users#create"
  get "/show" => "users#show"
  get "/index" => "users#index"
end
