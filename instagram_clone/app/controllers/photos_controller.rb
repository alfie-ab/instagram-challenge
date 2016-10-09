class PhotosController < ApplicationController

before_action :authenticate_user!

  def index
    # @photos = Photo.order('created_at')
    # redirect_to photos_path
  end

  def new
    @photo = Photo.new
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      flash[:success] = "The photo was added!"
      redirect_to photos_path
    else
      render 'new'
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:image, :caption)
  end

end
