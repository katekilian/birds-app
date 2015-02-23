class BirdsController < ApplicationController

  def index
    @birds = Bird.all
  end

  def show
    @bird = Bird.find(params[:id])
  end

  def new
    @bird = Bird.new
  end

  def create
    @bird = Bird.new(bird_params)
    if @bird.save
      redirect_to birds_path, notice: "Bird was successfully saved"
    else
      render :new
    end
  end

  def edit
    @bird = Bird.find(params[:id])
  end

  private

  def bird_params
    params.require(:bird).permit(:name, :color, :wingspan)
  end


end
