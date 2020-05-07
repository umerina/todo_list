class TodosController < ApplicationController
  
  def index
    @todo = Todo.new
    @todos = Todo.order('created_at ASC')
    
  end


  def create
    Todo.create(todo_params)
    respond_to do |format|
      format.html { redirect_to :root }
      format.json {render json: @todo}
    end
  end


  def destroy
    todo = Todo.find(params[:id])
    todo.destroy
    respond_to do |format|
      format.html { redirect_to :root }
      format.json {render json: @todo}
    end
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    todo = Todo.find(params[:id])
    todo.update(todo_params)
  end



  private
  def todo_params
    params.require(:todo).permit(:task, :limit_date)
  end
  
end

