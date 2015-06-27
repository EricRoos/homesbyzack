class WebImagesController < ApplicationController
  def new
    @web_image = WebImage.new
  end

  def create
    @web_image = WebImage.create web_image_params

    redirect_to @web_image

  end

  def show
    @web_image = WebImage.find(params[:id])
  end

  protected

  def web_image_params
    params.require(:web_image).permit(:image,:caption)
  end
end
