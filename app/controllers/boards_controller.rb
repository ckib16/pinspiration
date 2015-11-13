class BoardsController < ApplicationController
  before_action :set_board, only: [:show, :edit, :update, :destroy]

  def index
    @boards = Board.all
  end

  def new
    @board = Board.new
  end

  def create
    @user = current_user
    @board = @user.boards.new(board_params)
    if @board.save
      flash[:notice] = "Successfully created..."
      redirect_to @board
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @board.update(board_params)
      flash[:notice] = "Updated Successfully..."
      redirect_to @board
    else
      render :edit
    end
  end

  def destroy
    @board.destroy
    redirect_to boards_path
  end

private
  def set_board
    @board = Board.find(params[:id])
  end

  def board_params
    params.require(:board).permit(:title)
  end
end
