class TodosController <ActionController::Base
    skip_before_action :verify_authenticity_token
    def index
        url = "#{request.protocol}#{request.host_with_port}#{request.fullpath}"
        uri    = URI.parse(url)
        params = CGI.parse(uri.query)
        limit= params['limit'].first
        data = ["abc", "def", "efg","dwd","sws","dwdw"]
        limit2=limit.to_i
        # puts limit2
        render :json => limit2
    end
    def getAllTodos
        todoList = Todolist.all
        render :json=>todoList
    end
    def createTodo
        todoItem={
            "title"=>params[:title]
        }
        todo = Todolist.new(todoItem)
        todo.save
        render :json=>todo
    end
    def updateTodo
        todoItem={
            "title"=>"0"
            # title.sub! /(.*)/, "my value changed"
        }
        todo = Todolist.update(todoItem)
        # todo.save
        render :json=>todo
    end
    def deleteTodo
        todo = Todolist.find(params[:id])
        todo.destroy
        render :json=>todo
    end
end