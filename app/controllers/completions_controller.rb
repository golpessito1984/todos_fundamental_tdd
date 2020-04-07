class CompletionsController < ApplicationController
  before_action :set_todo, only: :create

  def create
    @todo.completed!
    redirect_to todos_path
  end

  private
    def set_todo
      @todo =  Todo.find(params[:todo_id])
    end

end