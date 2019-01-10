class BedsController < ApplicationController


  before_filter :first_rule,
    :only => [:edit, :show, :destroy, :update]

  def first_rule
    @bed = Bed.find(params[:id])
  end

  def index
    @beds = Bed.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @beds }
    end
  end


  def show
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bed }
    end
  end


  def new
    @room = Room.find(params[:room_id][:id])
    @room.update_attributes(:no_of_beds => @room.no_of_beds.to_i+params[:no_of_beds].to_i)
    @no = params[:no_of_beds].to_i
    @no.times do
      @room.beds.create()
    end
    redirect_to :controller => :beds
  end


  def edit
    @room = Room.find(@bed.room_id)
    @department = Department.find(@room.department_id)
  end


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


  def update
      if @bed.update_attributes(params[:bed])
        redirect_to :controller => :beds
      # else
      #   format.html { render :action => "edit" }
      #   format.xml  { render :xml => @bed.errors, :status => :unprocessable_entity }
      end

  end

  def destroy
    @bed.destroy

    respond_to do |format|
      format.html { redirect_to(beds_url) }
      format.xml  { head :ok }
    end
  end
end
