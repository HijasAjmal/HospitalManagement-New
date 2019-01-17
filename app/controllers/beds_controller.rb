class BedsController < ApplicationController


  filter_access_to :all
  before_filter :first_rule,
    :only => [:edit, :show, :destroy, :update]

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
    if @room.update_attributes(:no_of_beds => @room.no_of_beds.to_i+params[:no_of_beds].to_i)
      flash[:notice] = "Created bed successfully..."
      redirect_to :controller => :beds
    else
      flash[:notice] = "Faild to creat bed..."
      redirect_to :controller => :beds
    end
  end

  # edit bed
  def edit
    @room = Room.find(@bed.room_id)
  end

  # #create beds
  # def create
  #   @bed = Bed.new(params[:bed])
  #   redirect_to :controller => :beds
  # end


  # update bed
  def update
    if @bed.update_attributes(params[:bed])
      flash[:notice] = "Bed Updated successfully..."
      redirect_to :controller => :beds
    else
      flash[:notice] = "Faild to update Bed..."
      redirect_to :controller => :beds
    end
  end

  # destrot bed
  def destroy
    if @bed.destroy
      flash[:notice] = "Deleted successfully..."
      redirect_to :controller => :beds
    else
      flash[:notice] = "Failed to Delete..."
      redirect_to :controller => :beds
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
