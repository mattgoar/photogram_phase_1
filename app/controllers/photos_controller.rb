class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    photo_in = params[:id]
    @photo = Photo.where(:id => photo_in)
  end

  def destroy
    photo_in = params[:id]
    Photo.destroy(photo_in)
    @list_of_photos = Photo.all
    render("index.html.erb")
  end

  def new_form
        render("new_form.html.erb")
  end

end
