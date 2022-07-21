class TodosController <ActionController::Base
    skip_before_action :verify_authenticity_token
    def index
        # url = "#{request.protocol}#{request.host_with_port}#{request.fullpath}"
        # uri    = URI.parse(url)
        # params = CGI.parse(uri.query)
        # limit= params['limit'].first
        data = ["abc", "def", "efg","dwd","sws","dwdw"]
        # limit2=limit.to_i
        # puts limit2
        render :json => data
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
        todoid = Todolist.find(params[:id])
        puts "params value"
        puts params[:id]
        puts params[:title]
        todoItem={
            "title"=>params[:title]
            # title.sub! /(.*)/, "my value changed"
        }
        todo = todoid.update(todoItem)
        # todo.save
        render :json=>todo
    end

    def deleteTodo
        
        todo = Todolist.find(params[:id])
        todo.destroy
        render :json=>todo
    end
end