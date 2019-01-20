require 'csv'
class RoomsController < ApplicationController


  filter_access_to :all

  before_filter :first_rule,
    :only => [:destroy, :update_room]

  def first_rule
     @room = Room.find(params[:id])
  end

  # list all rooms
  def index
    @rooms = Room.all
      respond_to do |format|
        format.html
        format.csv {send_data Room.to_csv, :type => 'text/csv; charset=iso-8859-1; header=present', :disposition => "attachment; filename=Bed_availability_in_rooms.csv"}
      end
  end

  # editing room details
  def edit
    @room_beds = Bed.count(:id, :conditions => {:room_id => params[:id]})
    @room = Room.find(params[:id])
    @department = @room.department
  end


  def new
    @room = Room.new
  end


  # create new room
  def create
    @room = Room.new(params[:room])
    if @room.save
      flash[:notice] = "Room Created successfully............."
      redirect_to :controller => :rooms
    else
      flash[:notice] = "Faild to Create Room............."
      render :action => "new"
    end
  end


  # update room  details
  def update_room
    @room = Room.find(params[:id])
    if @room.update_attributes(:no_of_beds => @room.no_of_beds.to_i+params[:no_of_beds].to_i)
      flash[:notice] = "Room Updated...."
    else
      flash[:notice] = "Failed to update room...."
    end
    redirect_to :controller => :rooms
  end


  # destroy room
  def destroy
    if @room.destroy
      flash[:notice] = "Room deleted successfully..."
    else
      flash[:notice] = "Failed to delete room..."
    end
    redirect_to :controller => :rooms
  end


  def show_rooms
    @rooms = Room.all(:conditions => {:department_id => params[:id]})
    render :action => "index"
  end


  # generate pdf report of room by using (wkhtmltopdf)
  def room_report
    @rooms = Room.all
    render :pdf => "room_report", :header => { :right => '[page] of [topage]'}, :margin => {
                  :top => 40,
                  :bottom => 0
               }
  end
end
