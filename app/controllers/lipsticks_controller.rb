class LipsticksController < ApplicationController
  def index
    @lipsticks = Lipstick.all
  end
  def new
    @lipstick = Lipstick.new
  end
  def create
    @lipstick = Lipstick.new(lipstick_params)
    if @lipstick.save
      uploader = ImageUploader.new
      uploader.store!(params[:image])
      redirect_to lipsticks_path
    else
      render 'new'
    end
  end
  private
  def lipstick_params
    params.require(:lipstick).permit(:name, :brand, :is_best_seller, :description, :price, :image)
  end
end
