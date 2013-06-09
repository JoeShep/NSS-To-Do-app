class TasksController < ApplicationController

  def index
   @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @list = List.find(params[:list_id])
    @task = @list.tasks.create( params[:task] )
    flash[:notice] = "Your task has been added to the list."
    redirect_to list_path(@list)
  end
end