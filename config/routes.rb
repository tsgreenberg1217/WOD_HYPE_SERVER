Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      post "/signup", to: "users#create"
      post "/login", to: "sessions#authenticate"
      get "/get_current_user", to: "sessions#get_current_user"
      resources :wods
      # post "/auth", to: "sessions#create"
      # get "/current_user", to: "sessions#show"
    end
  end
end
