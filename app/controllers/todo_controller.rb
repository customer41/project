class TodoController < ApplicationController
  def index
  	@projects = Project.all
  end

  def update
    @todo = Todo.find(params[:id])
    if @todo.isCompleted == false then
      @todo.isCompleted = true
    elsif @todo.isCompleted == true then
      @todo.isCompleted = false
    end
    @todo.save
    redirect_to '/'
  end

  def create
  	#render plain: params[:task].inspect
  	@todo = Todo.new(todo_params)
  	@todo.isCompleted = false
  	#render plain: @todo.inspect
  	@todo.save
  	redirect_to '/'
  end

  private def todo_params
  	params.require(:task).permit(:text, :project_id)
  end
end
