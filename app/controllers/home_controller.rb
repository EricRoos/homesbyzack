class HomeController < ApplicationController
  def index
    @images = WebImage.first(10)
  end
end
