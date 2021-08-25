Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/todos/test', to: 'todos#test'
    end
  end
end
