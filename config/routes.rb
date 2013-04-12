RailsRemoteLogger::Application.routes.draw do
  root to: 'log#index'

  match 'log/:token/search_by_token' => "log#search_by_token", as: :log_token_search

  namespace :api, defaults: { format: :json } do
    scope module: :v1 do
      match "log/create" => "log#create", via: :post
    end
  end
end
