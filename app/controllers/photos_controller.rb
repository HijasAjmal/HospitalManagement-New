class PhotosController < ApplicationController


  # Upload new photo
  def new
    @photo = Photo.new
  end


  # create photo document
  def create
    @user = User.find(session[:current_user_id])
    @photo = Photo.new(params[:photo])
    @photo.update_attributes(:user_id => @user.id)
    redirect_to :controller => :sessions
  end

end
