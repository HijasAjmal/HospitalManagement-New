class BedsController < ApplicationController


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
  def new
    @room = Room.find(params[:room_id][:id])
    @room.update_attributes(:no_of_beds => @room.no_of_beds.to_i+params[:no_of_beds].to_i)
    @no = params[:no_of_beds].to_i
    @no.times do
      @room.beds.create()
    end
    redirect_to :controller => :beds
  end

  # edit bed
  def edit
    @room = Room.find(@bed.room_id)
  end

  #create beds
  def create
    @bed = Bed.new(params[:bed])
    redirect_to :controller => :beds
  end


  def update
      if @bed.update_attributes(params[:bed])
        redirect_to :controller => :beds
      end

  end

  def destroy
    @bed.destroy
    redirect_to :controller => :beds
  end


  def bed_report
    @beds = Bed.all
    render :pdf => "bed_report", :header => { :right => '[page] of [topage]'}, :margin => {
                  :top => 40,
                  :bottom => 0
               }
  end
end
