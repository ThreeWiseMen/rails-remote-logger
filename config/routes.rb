RailsRemoteLogger::Application.routes.draw do
  root to: 'log#index'

  match 'log/:shost/search_by_host' => "log#search_by_host", as: :log_search_host
  match 'log/:stoken/search_by_token' => "log#search_by_token", as: :log_search_token

  namespace :api, defaults: { format: :json } do
    scope module: :v1 do
      match "log/create" => "log#create", via: :post
    end
  end
end
