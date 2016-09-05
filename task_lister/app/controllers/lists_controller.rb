class ListsController < ApplicationController

  def new
    @list = List.new
    @list.tasks.build
  end

  def create
    #byebug
    @list = List.create(name: params[:list][:name], board_id: params[:list][:board_id].to_i)
    #byebug
    redirect_to list_path(@list)
  end

  def show
    @list = List.find_by(id: params[:id])
    @tasks = Task.where(list_id: params[:id])
    @task = Task.new
  end

  def index
    @lists = List.all
  end

  private

end
