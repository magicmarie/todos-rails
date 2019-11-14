class TodosController < ApplicationController
    before_action :set_todo, only: [:show, :update, :destroy]

    # get todos
    def index
        @todos = Todo.all
        json_response(@todos)
    end

    # post todos
    def create
        @todo = Todo.create!(todo_params)
        json_response(@todo, :created)
    end

    # get a todo by id
    def show
        json_response(@todo)
    end

    # update a todo by id
    def update
        @todo.update(todo_params)
        head :no_content
    end

    # deletea todo by id
    def destroy
        @todo.destroy
        head :no_content
    end

    private
    def todo_params
        params.permit(:title, :created_by)
    end

    def set_todo
        @todo = Todo.find(params[:id])
    end
end
