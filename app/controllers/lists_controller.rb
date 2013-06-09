class ListsController < ApplicationController

  def index
   @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.create( params[:list] )
    if @list.save
      flash[:notice] = "Your new to-do list has been created."
      redirect_to list_url(@list)
    else
      flash[:error] = "To-Do List not created. Try again."
      redirect_to new_list_url
    end
  end

  def show
    @list = List.find(params[:id])
  end

  def destroy
    @list = List.find(params[:id])
    if @list.destroy
      flash[:notice] = "#{@list.name
      } has been deleted"
      redirect_to lists_url
    else
      flash[:error] = "List not deleted. Try again"
      redirect_to lists_url
    end
  end

end
