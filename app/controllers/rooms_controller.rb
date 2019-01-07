require 'csv'
class RoomsController < ApplicationController
  # GET /rooms
  # GET /rooms.xml
  def index
    @rooms = Room.all

    respond_to do |format|
      format.html
      format.csv { send_data Room.to_csv}
     end
  end

  # GET /rooms/1
  # GET /rooms/1.xml
  def show
    @room = Room.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @room }
    end
  end

  # GET /rooms/new
  # GET /rooms/new.xml
  def new
    @room = Room.new
    @departments = Department.all
  end

  # GET /rooms/1/edit
  def edit
    @room = Room.find(params[:id])
    @room_beds = Bed.count(:id, :conditions => {:room_id => params[:id]})
    @department = Department.find(@room.department_id)
  end

  # POST /rooms
  # POST /rooms.xml
  def create
    @room = Room.create(:no_of_beds => params[:no_of_beds], :department_id => params[:category][:id])
    @no = params[:no_of_beds].to_i
    @no.times do
      @room.beds.create()
    end
    redirect_to :controller => :rooms
  end

  # PUT /rooms/1
  # PUT /rooms/1.xml
  def updateRoom
    @room = Room.find(params[:id])
    @room.update_attributes(:no_of_beds => @room.no_of_beds.to_i+params[:no_of_beds].to_i)
    @no = params[:no_of_beds].to_i
    @no.times do
      @room.beds.create()
    end
    redirect_to :controller => :rooms
  end

  # DELETE /rooms/1
  # DELETE /rooms/1.xml
  def destroy
    @room = Room.find(params[:id])
    @room.destroy

    respond_to do |format|
      format.html { redirect_to(rooms_url) }
      format.xml  { head :ok }
    end
  end

  def showRooms
    @rooms = Room.find(:all, :conditions => {:department_id => params[:id]})
    render :action => "index"

  end
end
