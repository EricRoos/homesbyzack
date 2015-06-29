class HomeController < ApplicationController
  def index
    @images = FrontpageSliderImage.first(10)
  end
end
