class BedsController < ApplicationController
  # GET /beds
  # GET /beds.xml
  def index
    @beds = Bed.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @beds }
    end
  end

  # GET /beds/1
  # GET /beds/1.xml
  def show
    @bed = Bed.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bed }
    end
  end

  # GET /beds/new
  # GET /beds/new.xml
  def new
    @room = Room.find(params[:room_id][:id])
    @room.update_attributes(:no_of_beds => @room.no_of_beds.to_i+params[:no_of_beds].to_i)
    @no = params[:no_of_beds].to_i
    @no.times do
      @room.beds.create()
    end
    redirect_to :controller => :beds
  end

  # GET /beds/1/edit
  def edit
    @bed = Bed.find(params[:id])
    @room = Room.find(@bed.room_id)
    @department = Department.find(@room.department_id)
  end

  # POST /beds
  # POST /beds.xml
  def create
    @bed = Bed.new(params[:bed])

    respond_to do |format|
      if @bed.save
        format.html { redirect_to(@bed, :notice => 'Bed was successfully created.') }
        format.xml  { render :xml => @bed, :status => :created, :location => @bed }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bed.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /beds/1
  # PUT /beds/1.xml
  def update
    @bed = Bed.find(params[:id])
      if @bed.update_attributes(params[:bed])
        redirect_to :controller => :beds
      # else
      #   format.html { render :action => "edit" }
      #   format.xml  { render :xml => @bed.errors, :status => :unprocessable_entity }
      end
  
  end

  # DELETE /beds/1
  # DELETE /beds/1.xml
  def destroy
    @bed = Bed.find(params[:id])
    @bed.destroy

    respond_to do |format|
      format.html { redirect_to(beds_url) }
      format.xml  { head :ok }
    end
  end
end
