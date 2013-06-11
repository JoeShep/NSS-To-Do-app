class TasksController < ApplicationController
  attr_accessor :done

  def index
   @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @list = List.find(params[:list_id])
    @task = @list.tasks.create( params[:task] )
    if @task.save
      flash[:notice] = "Your task has been added to the list."
      redirect_to list_url(@list)
    else
      flash[:error] = "Task not created. Try again."
      redirect_to new_task_url
    end
  end

  def complete
    @list = List.find(params[:list_id])
    @task = @list.tasks.find(params[:id])
    @task.done = true
    @task.save
  redirect_to list_url(@list)
  end

end
