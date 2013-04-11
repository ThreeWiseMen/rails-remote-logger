RailsRemoteLogger::Application.routes.draw do
  namespace :api, defaults: { format: :json } do
    scope module: :v1 do
      match "log/create" => "log#create", via: :post
    end
  end
end
