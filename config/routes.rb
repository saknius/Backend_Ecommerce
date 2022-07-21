Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/movies", to: "movies#index"
  get "/movies/:movie_id", to: "movies#index"
  get "/userlist", to: "userlist#index"
  get "/todos", to: "todos#getAllTodos"
  get "/singleuser", to: "singleuser#index"
  # get "/getallto1dos", to:"todos#getAllTodos"
  post "/todos", to:"todos#createTodo"
  # get "/updatetodos", to:"todos#updateTodo"
  put "/todos", to:"todos#updateTodo"
  # get "/deletetodos", to:"todos#deleteTodo"
  delete "/todos", to:"todos#deleteTodo"
  post "/todosdelete", to:"todos#deleteTodo"

  # Defines the root path route ("/")
  # root "articles#index"
end
