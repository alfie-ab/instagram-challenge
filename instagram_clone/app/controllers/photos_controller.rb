class PhotosController < ApplicationController

  def index
    render 'index'
    # @photos = Photo.all
  end

end
