require 'csv'
class RoomsController < ApplicationController


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


  # def reports
  #   redirect_to :controller => :rooms
  # end


  # new room
  def new
    @room = Room.new
    @departments = Department.all
  end


  # editing room details
  def edit
    @room_beds = Bed.count(:id, :conditions => {:room_id => params[:id]})
    @room = Room.find(params[:id])
    @department = @room.department
  end


  # create new room
  def create
    @room = Room.create(:room_id => params[:room_id], :no_of_beds => params[:no_of_beds], :department_id => params[:category][:id])
    @no_of_beds = params[:no_of_beds].to_i
    @no_of_beds.times do
      @room.beds.create()
    end
    redirect_to :controller => :rooms
  end


  # update room  details
  def update_room
    @room = Room.find(params[:id])
    @room.update_attributes(:no_of_beds => @room.no_of_beds.to_i+params[:no_of_beds].to_i)
    @no_of_beds = params[:no_of_beds].to_i
    @no_of_beds.times do
      @room.beds.create()
    end
    redirect_to :controller => :rooms
  end


  # destroy room
  def destroy
    @room.destroy
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
