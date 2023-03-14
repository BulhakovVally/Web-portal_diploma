class PhotoGalleriesController < ApplicationController

  before_filter :authenticate_user!, :except => [:show, :index]


def index
    @photo_galleries = PhotoGallery.paginate(:page => params[:page], :per_page => 3)
  end

def show
    @photo_gallery = PhotoGallery.find(params[:id])
end

def new
    @photo_gallery = PhotoGallery.new
end
 
def create
  @photo_gallery = PhotoGallery.new(photo_gallery_params)
  #@photo_gallery.pictures = params[:photo_gallery][:pictures]

  if @photo_gallery.save
    redirect_to @photo_gallery
  else
    render 'new'
  end
end

def edit
  @photo_gallery = PhotoGallery.find(params[:id])
end

def update
  @photo_gallery = PhotoGallery.find(params[:id])
 
  if @photo_gallery.update(photo_gallery_params)
    redirect_to @photo_gallery
  else
    render 'edit'
  end
end

def destroy
  @photo_gallery = PhotoGallery.find(params[:id])
  @photo_gallery.destroy
 
  redirect_to photo_galleries_path
end




private
def photo_gallery_params
  params.require(:photo_gallery).permit(:name, :describtion, pictures: [])
end

end
