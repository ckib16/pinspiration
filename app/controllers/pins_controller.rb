class PinsController < ApplicationController
  before_action :set_pin, only: [:show, :edit, :update, :destroy]

  def index
    @pins = Pin.all
  end

  def new
    @pin = Pin.new
  end

  def create
    @pin = Pin.new(pin_params)
    if @pin.save
      flash[:notice] = "Successfully created..."
      redirect_to @pin
    else
      render :new
    end
  end

  def show

  end

  def edit
    @pin = Pin.fin
  end

  def update
  end

  def destroy
  end

private
  def set_pin
    @pin = Pin.find(params[:id])
  end

  def pin_params
    params.require(:pin).permit(:title, :image_url)
  end
end
