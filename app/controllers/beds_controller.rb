class BedsController < ApplicationController


  filter_access_to :all
  before_filter :first_rule, :only => [:edit, :show, :destroy, :update]


  def first_rule
    @bed = Bed.find(params[:id])
  end


  # list all beds
  def index
    @beds = Bed.all
  end


  #show bed details
  def show

  end


  # new bed
  def new ## change to model
    @room = Room.find(params[:room_id][:id])
    @no = params[:no_of_beds].to_i
    if @room.update_attributes(:no_of_beds => @room.no_of_beds.to_i + params[:no_of_beds].to_i)
      flash[:notice] = "Created bed successfully..."
    else
      flash[:notice] = "Faild to creat bed..."
    end
    redirect_to :controller => :beds
  end

  # edit bed
  def edit
    @room = Room.find(@bed.room_id)
  end

  # update bed
  def update
    if @bed.update_attributes(params[:bed])
      flash[:notice] = "Bed Updated successfully..."
    else
      flash[:notice] = "Faild to update Bed..."
    end
    redirect_to :controller => :beds
  end

  # destrot bed
  def destroy
    if @bed.destroy
      flash[:notice] = "Deleted successfully..."
    else
      flash[:notice] = "Failed to Delete..."
    end
    redirect_to :controller => :beds
  end

end
