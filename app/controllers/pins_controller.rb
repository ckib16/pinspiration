class PinsController < ApplicationController
  before_action :set_pin, only: [:show, :edit, :update, :destroy]

  def index
    @pins = Pin.all
  end

  def new
    @board = Board.find(params[:board_id])
    @pin = Pin.new
  end

  def create
    @board = Board.find(params[:board_id])
    @pin = @board.pins.new(pin_params)
    if @pin.save
      flash[:notice] = "Successfully created..."
      redirect_to @board
    else
      render :new
    end
  end

  def show
  end

  def edit
    @board = Board.find(params[:board_id])
  end

  def update
    @board = Board.find(params[:board_id])
    if @pin.update(pin_params)
      flash[:notice] = "Successfully edited..."
      redirect_to @pin
    else
      render :edit
    end
  end

  def destroy
    @board = Board.find(params[:board_id])
    @pin.destroy
    redirect_to board_path(@board)
  end

private
  def set_pin
    @pin = Pin.find(params[:id])
  end

  def pin_params
    params.require(:pin).permit(:title, :image_url)
  end
end
