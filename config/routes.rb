Rails.application.routes.draw do
  get "/experiences" => "experiences#index"
  get "/experiences/:id" => "experiences#show"

  post "/experiences" => "experiences#create"


end
