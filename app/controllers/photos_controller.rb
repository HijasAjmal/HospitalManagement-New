class PhotosController < ApplicationController


  filter_access_to :all
  # Upload new photo
  def new
    @photo = Photo.new
  end


  # create photo document
  def create#callback
    @user = current_user
    if @user.photos.destroy_all
      if @user.photos.create(params[:photo])
        flash[:notice] = "Photo Uploaded successfully..."
        redirect_to :controller => :sessions
      end
    else
      flash[:notice] = "Failed to Upload Photo..."
      redirect_to :controller => :sessions
    end
  end

end
