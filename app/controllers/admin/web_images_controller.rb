class Admin::WebImagesController < Admin::AdminController
  def new
    @web_image = FrontpageSliderImage.new
  end

  def index
    @images= FrontpageSliderImage.all
  end

  def create
    @web_image = FrontpageSliderImage.create web_image_params
    redirect_to admin_web_images_path
  end

  def show
    @web_image = FrontpageSliderImage.find(params[:id])
  end

  protected

  def web_image_params
    params.require(:frontpage_slider_image).permit(:image,:caption)
  end
end
