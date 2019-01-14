class PhotosController < ApplicationController


  # Upload new photo
  def new
    @photo = Photo.new
  end


  # create photo document
  def create
    @user = User.find(session[:current_user_id])
    @user.photos.destroy_all
    @user.photos.create(params[:photo])
    redirect_to :controller => :sessions
  end

end
