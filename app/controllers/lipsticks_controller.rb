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
  def show
    @lipstick = Lipstick.find(params[:id])
  end
  def edit
    @lipstick = Lipstick.find(params[:id])
  end
  def update
    @lipstick = Lipstick.find(params[:id])
    if @lipstick.update(lipstick_params)
      redirect_to lipsticks_path
    else
      render 'edit'
    end
  end
  def destroy
    @lipstick = Lipstick.find(params[:id])
    @lipstick.destroy
    redirect_to lipsticks_path
  end

  private
  def lipstick_params
    params.require(:lipstick).permit(:name, :brand, :is_best_seller, :description, :price, :image)
  end
end
