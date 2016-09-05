class BoardsController < ApplicationController
  def show
    @board = Board.find_by(id: params[:id])
    @lists = List.where(board_id: params[:id])
    @list = List.new
  end
  def index
    @boards = Board.all
  end
  def new
    @board = Board.new
  end
  def create
    @board = Board.create(name: params[:board][:name])
    redirect_to board_path(@board)
  end
end
