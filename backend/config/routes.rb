Rails.application.routes.draw do
  get 'user/api/v1'
  namespace :api do
    namespace :v1 do
      post '/todos/create', to: 'todos#create'
      get '/todos', to: 'todos#show'
      get '/todos/:id', to: 'todos#showOneTodo'
      put '/todos/:id', to: 'todos#updateTodo'
      delete '/todos/:id', to: 'todos#deleteTodo'
      get '/user/register', to: 'user#register'
    end
  end
end
