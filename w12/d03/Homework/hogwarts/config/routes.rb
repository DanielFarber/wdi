Rails.application.routes.draw do
  
  get "/students/:id" => "students#show"
  put "/students/:id" => "students#update"
  get "/houses/:id" => "houses#show"
  get "/hogwarts" => "hogwarts#show"
  post "/hogwarts/:id" =>  "student#create"

end
