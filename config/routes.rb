Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/params" => "game_app#page"
    get "/guess" => "game_app#guess"
    get "/guess/:guess" => "game_app#guess"
    get '/params/:name' => "game_app#page"
  end
end
