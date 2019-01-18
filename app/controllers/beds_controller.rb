class BedsController < ApplicationController


  filter_access_to :all
  before_filter :first_rule,
    :only => [:edit, :show, :destroy, :update]

  after_filter :last_rule,
    :only => [:new, :update, :destroy]

  def first_rule
    @bed = Bed.find(params[:id])
  end

  def last_rule
    redirect_to :controller => :beds
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
    if @room.update_attributes(:no_of_beds => @room.no_of_beds.to_i+params[:no_of_beds].to_i)
      flash[:notice] = "Created bed successfully..."
    else
      flash[:notice] = "Faild to creat bed..."
    end
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
  end

  # destrot bed
  def destroy
    if @bed.destroy
      flash[:notice] = "Deleted successfully..."
    else
      flash[:notice] = "Failed to Delete..."
    end
  end

  # generating bed report as pdf
  def bed_report
    @beds = Bed.all
    render :pdf => "bed_report", :header => { :right => '[page] of [topage]'}, :margin => {
                  :top => 40,
                  :bottom => 0
               }
  end
end
