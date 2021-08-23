Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      # get '/user/:id', to: "users#new"
      resources :users do
      end
    end
  end
end
