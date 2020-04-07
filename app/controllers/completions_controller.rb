class CompletionsController < ApplicationController
  before_action :set_todo, only: [:create, :destroy]

  def create
    @todo.completed!
    redirect_to todos_path
  end

  def destroy
    @todo.mark_incomplete!
    redirect_to todos_path
  end

  private
    def set_todo
      @todo =  Todo.find(params[:todo_id])
    end

end