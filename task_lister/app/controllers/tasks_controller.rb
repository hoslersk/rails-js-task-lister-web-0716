class TasksController < ApplicationController

  def new
    @task = Task.new
  end

  def create
    #byebug
    @task = Task.create(name: params[:task][:name], list_id: params[:task][:list_id])#, complete: params[:task][:complete])
    redirect_to list_path(@task.list.id)
  end

  def destroy
    @task = Task.find_by(id: params[:id])
    @list = @task.list
    @board = @list.board
    @task.destroy
    redirect_to board_path(@board)
  end

end
