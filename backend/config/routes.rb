Rails.application.routes.draw do
  get 'user/api/v1'
  namespace :api do
    namespace :v1 do
      post '/todos/create', to: 'todos#create'
      get '/todos', to: 'todos#show'
      get '/todos/:id', to: 'todos#showOneTodo'
      put '/todos/:id', to: 'todos#updateTodo'
      delete '/todos/:id', to: 'todos#deleteTodo'
      post '/user/register', to: 'user#register'
      post '/user/login', to: 'user#login'
      post '/locations/create', to: 'locations#createLocation'
      get '/locations', to: 'locations#showLocations'
      post '/leavepantou/create', to: 'leavepantou#createNewLeave'
      get '/leavepantou', to: "leavepantou#showLeaves"
      post '/katalima/create', to: "katalimata#createNewKatalima"
      get '/katalima/:locationId', to: "katalimata#showKatalsByLocation"
    end
  end
end
