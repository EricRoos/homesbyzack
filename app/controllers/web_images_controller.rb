class WebImagesController < ApplicationController
  def new
    @web_image = FrontpageSliderImage.new
  end

  def create
    @web_image = FrontpageSliderImage.create web_image_params

    redirect_to web_image_path(@web_image)

  end

  def show
    @web_image = FrontpageSliderImage.find(params[:id])
  end

  protected

  def web_image_params
    params.require(:frontpage_slider_image).permit(:image,:caption)
  end
end
