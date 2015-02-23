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

  def update
    @bird = Bird.find(params[:id])
    if @bird.update(bird_params)
      redirect_to bird_path(@bird), notice: "Bird was successfully updated"
    else
      render :edit
    end
  end

  def destroy
    Bird.destroy(params[:id])
    redirect_to birds_path
  end

  private

  def bird_params
    params.require(:bird).permit(:name, :color, :wingspan)
  end


end
