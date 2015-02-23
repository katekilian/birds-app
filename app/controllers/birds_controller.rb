class BirdsController < ApplicationController

  def index
    @birds = Bird.all
  end

  def show
    @bird = Bird.find(params[:id])
  end



  private

  def bird_params
    params.require(:birds).permit(:name, :color, :wingspan)
  end


end
