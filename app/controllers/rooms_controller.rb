require 'csv'
class RoomsController < ApplicationController


  filter_access_to :all
  before_filter :first_rule,
    :only => [:destroy, :updateRoom]

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


  # create new room
  def create
    @room = Room.new
    if @room.update_attributes(:room_id => params[:room_id], :no_of_beds => params[:no_of_beds], :department_id => params[:category][:id])
      flash[:notice] = "Room Created successfully............."
      @room.create_bed_new(params[:no_of_beds].to_i)
      redirect_to :controller => :rooms
    else
      flash[:notice] = "Faild to Create Room............."
      redirect_to :controller => :rooms
    end
  end


  # update room  details
  def update_room
    @room = Room.find(params[:id])
    if @room.update_attributes(:no_of_beds => @room.no_of_beds.to_i+params[:no_of_beds].to_i)
      flash[:notice] = "Room Updated...."
      redirect_to :controller => :rooms
    else
      flash[:notice] = "Failed to update room...."
      redirect_to :controller => :rooms
    end
  end


  # destroy room
  def destroy
    if @room.destroy
      flash[:notice] = "Room deleted successfully..."
      redirect_to :controller => :rooms
    else
      flash[:notice] = "Failed to delete room..."
      redirect_to :controller => :rooms
    end
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
