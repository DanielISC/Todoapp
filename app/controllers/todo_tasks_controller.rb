class TodoTasksController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  before_action :set_todo_list

  def new
    @todo_task = TodoTask.new
  end

  def show
  end

  def create
    SendMailJob.perform_later
    @todo_task = @todo_list.todo_tasks.create(todo_task_params)
    redirect_to @todo_list
  end

  def update
    @todo_task = @todo_list.todo_tasks.find(params[:id])
    if @todo_task.update(todo_task_params)
      flash[:success] = "Todo List item was deleted."
    else
      flash[:error] = "Todo List item could not be deleted."
    end
    redirect_to @todo_list
  end


  def destroy
    @todo_task = TodoTask.find(params[:id])
    if @todo_task.destroy
      flash[:success] = "Todo List item was deleted."
    else
      flash[:error] = "Todo List item could not be deleted."
    end
    redirect_to @todo_list
  end

  def complete
   @todo_task.update_attribute(:completed_at, Time.now)
   redirect_to @todo_list, notice: "Todo task completed"
  end

  private

  def set_todo_list
    @todo_list = TodoList.find(params[:todo_list_id])
    @todo_task = params[:id] ? TodoTask.find(params[:id]) : TodoTask.new
  end

  def todo_task_params
    params[:todo_task].permit(:content)
  end

end
