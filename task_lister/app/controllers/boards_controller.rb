class BoardsController < ApplicationController

  def show
    @board = Board.find_by(id: params[:id])
    @lists = List.where(board_id: params[:id])
    # byebug
    @list = List.new
  end

  def index
    @boards = Board.all
    # @lists = List.where(board_id: params[:id])
    # @list = List.new
  end

  def new
    @board = Board.new
    @board.lists.build
  end

  def create
    @board = Board.create(name: params[:board][:name])
    redirect_to board_path(@board)
  end

end
