class Api::V1::TodosController < ApplicationController
    def create
        
        @todos = Todo.new(todos_params)
        if @todos.save
            render json: @todos, status: 201
        else
            render error: {error:"Error"}, status: 400
        end
    end

    def show
        @todos = Todo.all
        if @todos
            render json: @todos, status: 201
        else
            render error: {error:"Error"}, status: 400
        end
    end

    def showOneTodo
        @todos = Todo.find(params[:id])
        if @todos
            render json: @todos, status: 201
        else
            render json: {error: "Error"}, status: 400
        end
    end

    def updateTodo
        @todos = Todo.find(params[:id])
        if @todos
            @todos.update(todos_params)
            render json: @todos, status: 201
        else
            render error: {error:"Error on update"}, status: 400
        end
    end

    def deleteTodo
        @todos = Todo.find(params[:id])
        error = 'Error'
        if @todos
            @todos.destroy
            render json: {data:"destroyed!"}, status: 201
        else
            render error 
        end
    end

    private

    def todos_params
        params.require(:todo).permit(:title)
    end

end
