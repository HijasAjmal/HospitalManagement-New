class PhotosController < ApplicationController



  def new
    @photo = Photo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @photo }
    end
  end


  def create
    @user = User.find(session[:current_user_id])
    @photo = Photo.new(params[:photo])
    @photo.update_attributes(:user_id => @user.id)
    redirect_to :controller => :sessions
  end

  private

  def photo_params
    params.require(:photo).permit(:photo)
  end
end
